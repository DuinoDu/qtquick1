#include <QtGui/QApplication>
#include <QDesktopWidget>

#include <qdeclarative.h>
#include <QDeclarativeView>
#include <QDeclarativeContext>

#include <QString>
#include "qwidgets.h"
#include "backend.h"


class Viewer : public QDeclarativeView
{

public:
    Viewer(){}
    ~Viewer(){}

public slots:
    void changeSize(QSize size){
        QDeclarativeContext* context = new QDeclarativeContext(this->rootContext());
        if(!context){
            context->setContextProperty("width", this->width());
            context->setContextProperty("height", this->height());
        }
    }
};


int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    qmlRegisterType<MyPushButton>("MyWidgets", 1, 0, "MyPushButton");
    qmlRegisterType<Backend>("Backend", 1, 0, "Backend");

    QDeclarativeView viewer;

    viewer.rootContext()->setContextProperty("ScreenWidth", app.desktop()->width());
    viewer.rootContext()->setContextProperty("ScreenHeight", app.desktop()->height());

    viewer.setSource(QUrl(QLatin1String("qrc:/qml/main.qml")));
    //viewer.setWindowFlags(Qt::FramelessWindowHint | Qt::WindowSystemMenuHint);
    viewer.show();

    return app.exec();
}
