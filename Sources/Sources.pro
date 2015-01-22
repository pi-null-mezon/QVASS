#-------------------------------------------------
#
# Project created by QtCreator 2014-05-30T10:49:21
#
#-------------------------------------------------

QT       += core \
            gui \
            serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

#------------------App Info-----------------------
TEMPLATE = app
TARGET = QVASS
VERSION = 1.0.0.0
DEFINES +=  APP_NAME=\\\"$${TARGET}\\\" \
            APP_VERSION=\\\"$${VERSION}\\\"

#--------------------Sources----------------------
SOURCES +=  main.cpp\
            mainwindow.cpp \
            qserialprocessor.cpp \
            qharmonicprocessor.cpp \
    qtransmissiondialog.cpp

HEADERS  += mainwindow.h \
            about.h \
            qserialprocessor.h \
            qharmonicprocessor.h \
    qtransmissiondialog.h

#------------------3rd parties---------------------
include(FFTW.pri)
include(QEasyPlot.pri)

#--------------------CONFIG------------------------
#RC_ICONS = $$PWD/../Resources/Images/App_ico.ico
CONFIG(release, debug|release): DEFINES += QT_NO_WARNING_OUTPUT
win32-g++: DEFINES += MINGW_COMPILER

FORMS += \
    qtransmissiondialog.ui

