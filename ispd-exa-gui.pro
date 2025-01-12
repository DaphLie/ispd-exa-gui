SOURCES += \
  forms/scatterplot.cpp \
  qcustomplot.cpp \
  src/window/settings.cpp \
  src/window/adduser.cpp \
  src/window/drawingtable/view.cpp \
  src/window/drawingtable/scene.cpp \
  src/window/drawingtable/drawingtable.cpp \
  src/window/machineconfigurationwindow.cpp \
  src/window/main.cpp \
  src/window/schemawindow.cpp \
  src/window/simulation.cpp \
  src/window/workloads.cpp \
  src/window/users.cpp \
  src/components/conf/machineconfiguration.cpp \
  src/components/conf/linkconfiguration.cpp \
  src/components/conf/schemaconfiguration.cpp \
  src/components/conf/switchconfiguration.cpp \
  src/components/cloner/machinecloner.cpp \
  src/components/link.cpp \
  src/components/switch.cpp \
  src/components/machine.cpp \
  src/components/machinebuilder.cpp \
  src/components/schema.cpp \
  src/icon/machineiconfactory.cpp \
  src/icon/pixmapiconbuilder.cpp \
  src/icon/pixmapicon.cpp \
  src/icon/linkicon.cpp \
  src/ispd-exa-gui.cpp

INCLUDEPATH += include/
HEADERS += \
  forms/scatterplot.h \
  packCircles.h \
  include/window/settings.h \
  include/window/workloads.h \
  include/window/adduser.h \
  include/window/drawingtable/view.h \
  include/window/drawingtable/scene.h \
  include/window/drawingtable/drawingtable.h \
  include/window/machineconfigurationwindow.h \
  include/window/main.h \
  include/window/simulation.h \
  include/window/users.h \
  include/window/schemawindow.h \
  include/utils/iconSize.h \
  include/utils/iconPath.h \
  include/components/conf/itemconfiguration.h \
  include/components/conf/machineconfiguration.h \
  include/components/conf/linkconfiguration.h \
  include/components/conf/schemaconfiguration.h \
  include/components/conf/switchconfiguration.h \
  include/components/cloner/switchcloner.h \
  include/components/cloner/linkcloner.h \
  include/components/cloner/cloner.h \
  include/components/cloner/machinecloner.h \
  include/components/cloner/schemacloner.h \
  include/components/link.h \
  include/components/switch.h \
  include/components/item.h \
  include/components/connection.h \
  include/components/machine.h \
  include/components/machinebuilder.h \
  include/components/schema.h \
  include/icon/machineiconfactory.h \
  include/icon/pixmapbuilder.h \
  include/icon/pixmapicon.h \
  include/icon/linkicon.h \
  include/icon/icon.h \
  include/icon/pixmapiconbuilder.h \
  include/icon/pixmappair.h \
  qcustomplot.h



CONFIG += qt c++20 release warn_on
QT += widgets svg printsupport 
message($$[QT_INSTALL_HEADERS])


RESOURCES += \
    ispd-exa-gui.qrc

FORMS += \
  forms/adduser.ui \
  forms/machineconfigurationwindow.ui \
  forms/scatterplot.ui \
  forms/simulation.ui \
  forms/userwindow.ui \
  forms/workloads.ui \
  forms/mainwindow.ui \
  forms/settingswindow.ui

CONFIG(debug, debug|release) {
    DESTDIR = build/debug
}
CONFIG(release, debug|release) {
    DESTDIR = build/release
}

# Define os diretórios para arquivos intermediários
OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.qrc
UI_DIR = $$DESTDIR/.u

# Adicione outros arquivos gerados automaticamente (caso necessário) à lista de DISTFILES
DISTFILES += \
    packCircles \

    results.json

