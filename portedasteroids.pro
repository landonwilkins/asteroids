TEMPLATE = app
INCLUDEPATH += .

# Input
HEADERS += ledmeter.h sprites.h toplevel.h view.h animateditem.h
SOURCES += ledmeter.cpp main.cpp toplevel.cpp view.cpp animateditem.cpp

RESOURCES += portedasteroids.qrc

# install
target.path = $$[QT_INSTALL_EXAMPLES]/graphicsview/portedasteroids
sources.files = $$SOURCES $$HEADERS $$RESOURCES $$FORMS portedasteroids.pro bg.png sounds sprites
sources.path = $$[QT_INSTALL_EXAMPLES]/graphicsview/portedasteroids

INSTALLS += target sources

symbian: include($$PWD/../../symbianpkgrules.pri)
maemo5: include($$PWD/../../maemo5pkgrules.pri)
contains(MEEGO_EDITION,harmattan): include($$PWD/../../harmattanpkgrules.pri)

simulator: warning(This example might not fully work on Simulator platform)
