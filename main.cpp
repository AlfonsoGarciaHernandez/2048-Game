#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "mainclass.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    MainClass mainClass;

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("vueObjectQML",&mainClass);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
