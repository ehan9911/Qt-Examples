#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QFuture>
#include <QMainWindow>

class MainWindow : public QMainWindow
{
    Q_OBJECT
public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    void testLog();

    QFuture<void> m_watcher;
    volatile bool m_running = true;
};

#endif // MAINWINDOW_H
