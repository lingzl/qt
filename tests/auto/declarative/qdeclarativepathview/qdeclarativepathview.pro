load(qttest_p4)
contains(QT_CONFIG,declarative): QT += declarative
macx:CONFIG -= app_bundle

SOURCES += tst_qdeclarativepathview.cpp

wince*|symbian: {
    importFiles.files = data
    importFiles.path = .
    DEPLOYMENT += importFiles
    wince*: DEFINES += SRCDIR=\\\".\\\"
} else {
    DEFINES += SRCDIR=\\\"$$PWD\\\"
}

CONFIG += parallel_test

