#include <QtGui/QApplication>
#include <qdeclarative.h>
#include <QDeclarativeView>
#include <QString>
#include "qwidgets.h"
#include "backend.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    qmlRegisterType<MyPushButton>("MyWidgets", 1, 0, "MyPushButton");
    qmlRegisterType<Backend>("Backend", 1, 0, "Backend");

    QDeclarativeView viewer;
    viewer.setSource(QUrl(QLatin1String("qrc:/qml/main.qml")));
    viewer.show();
    return app.exec();
}
