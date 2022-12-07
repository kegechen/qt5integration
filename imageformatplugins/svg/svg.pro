TARGET  = dsvg
TEMPLATE = lib
CONFIG += plugin

HEADERS += qsvgiohandler.h
SOURCES += main.cpp \
           qsvgiohandler.cpp
OTHER_FILES += svg.json

CONFIG += c++11 link_pkgconfig
PKGCONFIG += dtkgui

DESTDIR = $$_PRO_FILE_PWD_/../../bin/plugins/imageformats/

unix {
    target.path = $$[QT_INSTALL_PLUGINS]/imageformats/
    INSTALLS += target
}
