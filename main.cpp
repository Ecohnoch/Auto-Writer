#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtWebEngine>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QtWebEngine::initialize();
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/AWMainTitle.qml")));

    return app.exec();
}
