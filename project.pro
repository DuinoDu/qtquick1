TEMPLATE = app
TARGET = startup

QT += core gui declarative

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

SOURCES += main.cpp \
    backend.cpp

HEADERS += \
    qwidgets.h \
    backend.h

RESOURCES += \
    qrc.qrc
