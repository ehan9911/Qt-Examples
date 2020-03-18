#include "mainwindow.h"
#include "tcpserver.h"

#include <QHostAddress>
#include <QNetworkInterface>
#include <QtWidgets>

class MainWindowPrivate
{
public:
    MainWindowPrivate(QMainWindow* owner) : owner(owner){
        ipBox = new QComboBox(owner);
        portEdit = new QLineEdit(owner);
        listenBtn = new QPushButton(QObject::tr("Listen"), owner);
        listenBtn->setCheckable(true);
        messageEdit = new QTextEdit(owner);
        messageEdit->document()->setMaximumBlockCount(1000);
        currentConnections = new QLabel("0", owner);
        historyMaxConnections = new QLabel("0", owner);
    }
    QMainWindow *owner;
    QComboBox *ipBox;
    QLineEdit *portEdit;
    QPushButton *listenBtn;
    QTextEdit *messageEdit;
    QLabel *currentConnections;
    QLabel *historyMaxConnections;
    TcpServer *tcpServer;
};

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , d(new MainWindowPrivate(this))
{
    setupUI();
    initParam();
    buildConnect();
}

MainWindow::~MainWindow()
{
    delete d;
}

void MainWindow::onListen()
{
    if(d->listenBtn->isChecked()){
        d->listenBtn->setChecked(false);
        QString port = d->portEdit->text();
        if(port.isEmpty()){
            QMessageBox::warning(this, tr("Warning!"),
                                 tr("Port is empty!"), QMessageBox::Ok);
            return;
        }
        d->tcpServer = new TcpServer(this);
        connect(d->tcpServer, &TcpServer::message, d->messageEdit, &QTextEdit::append, Qt::UniqueConnection);
        connect(d->tcpServer, &TcpServer::maxCount, this, &MainWindow::onMaxCount, Qt::UniqueConnection);
        connect(d->tcpServer, &TcpServer::clientCount, this, &MainWindow::onCount, Qt::UniqueConnection);
        bool ok = d->tcpServer->listen(QHostAddress::Any, quint16(port.toUInt()));
        d->ipBox->setEnabled(!ok);
        d->portEdit->setEnabled(!ok);
        d->listenBtn->setChecked(ok);
        QString text = ok? tr("Disconnect") : tr("Listen");
        d->listenBtn->setText(text);
    }
    else if(d->tcpServer->isListening()){
        d->tcpServer->close();
        delete d->tcpServer;
        d->tcpServer= nullptr;
        d->ipBox->setEnabled(true);
        d->portEdit->setEnabled(true);
        d->listenBtn->setChecked(false);
        d->listenBtn->setText(tr("Listen"));
    }
}

void MainWindow::onMaxCount(QAtomicInt count)
{
    d->historyMaxConnections->setNum(count);
}

void MainWindow::onCount(QAtomicInt count)
{
    d->currentConnections->setNum(count);
}

void MainWindow::setupUI()
{
    QHBoxLayout *topLayout = new QHBoxLayout;
    topLayout->addWidget(new QLabel(tr("Local IP: "), this));
    topLayout->addWidget(d->ipBox);
    topLayout->addWidget(new QLabel(tr("Local Port: "), this));
    topLayout->addWidget(d->portEdit);
    topLayout->addStretch(1);
    topLayout->addWidget(d->listenBtn);

    QHBoxLayout *midLayout = new QHBoxLayout;
    midLayout->addWidget(new QLabel(tr("Current Connections: "), this));
    midLayout->addWidget(d->currentConnections);
    midLayout->addStretch(1);
    midLayout->addWidget(new QLabel(tr("History max Connections: "), this));
    midLayout->addWidget(d->historyMaxConnections);

    QVBoxLayout *layout = new QVBoxLayout;
    layout->addLayout(topLayout);
    layout->addLayout(midLayout);
    layout->addWidget(d->messageEdit);

    QFrame *frame = new QFrame(this);
    frame->setLayout(layout);

    setCentralWidget(frame);
}

void MainWindow::initParam()
{
    QStringList ipListBox;
    QList<QHostAddress> ipList = QNetworkInterface::allAddresses(); //获得IP
    foreach(QHostAddress address, ipList){
        if(address.protocol() == QAbstractSocket::IPv4Protocol){
            ipListBox << address.toString();
        }
    }
    d->ipBox->clear();
    d->ipBox->addItems(ipListBox);
    d->portEdit->setValidator(new QIntValidator(0, 65536, d->portEdit));
    d->portEdit->setText("65533");
}

void MainWindow::buildConnect()
{
    connect(d->listenBtn, &QPushButton::clicked, this, &MainWindow::onListen);
}

