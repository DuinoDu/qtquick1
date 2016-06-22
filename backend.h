#ifndef BACKEND_H
#define BACKEND_H

#include <QDeclarativeItem>

class Backend : public QDeclarativeItem
{
    Q_OBJECT


public:
    Backend();
    Q_INVOKABLE QString helloCpp(){ return "Hello cpp"; }

signals:

public slots:
};

#endif // BACKEND_H
