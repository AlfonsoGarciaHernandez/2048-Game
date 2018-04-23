#ifndef MAINCLASS_H
#define MAINCLASS_H

#include <QObject>
#include <iostream>

class MainClass : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QList<QString> box READ ReadMatrix NOTIFY MatrixChanged)
    Q_PROPERTY(QList<QString> color READ ReadColor NOTIFY ColorChanged)

public:
    explicit MainClass(QObject *parent = nullptr);
    Q_INVOKABLE void key_up();
    Q_INVOKABLE void key_down();
    Q_INVOKABLE void key_left();
    Q_INVOKABLE void key_right();
    Q_INVOKABLE void newGame();

    QList<QString> ReadMatrix();
    QList<QString> ReadColor();

private:
    int matrix[4][4];
    int counter;
    bool mouv;


    void Key_Pressed();
    int CountFreeSpace();
    bool EndGame();
    void Add_Number();
    void PrintMatrix();
    void ResetGame();

signals:
    void MatrixChanged();
    void ColorChanged();
public slots:

};

#endif // MAINCLASS_H
