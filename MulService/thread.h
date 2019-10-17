#ifndef THREAD_H
#define THREAD_H

#include <QThread>

class TcpSocket;
class Thread : public QThread
{
    Q_OBJECT
public:
    Thread(qintptr socketDescriptor, QObject *parent = nullptr);
    ~Thread() override;

signals:
    void message(QString);
    void maxCount(QAtomicInt);
    void clientCount(QAtomicInt);

protected:
    void run() override;

private:
    qintptr socketfd;
};

#endif // THREAD_H
