/****************************************************************************
** Meta object code from reading C++ file 'QGCHilConfiguration.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/ui/QGCHilConfiguration.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QGCHilConfiguration.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QGCHilConfiguration_t {
    QByteArrayData data[8];
    char stringdata0[110];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_QGCHilConfiguration_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_QGCHilConfiguration_t qt_meta_stringdata_QGCHilConfiguration = {
    {
QT_MOC_LITERAL(0, 0, 19), // "QGCHilConfiguration"
QT_MOC_LITERAL(1, 20, 20), // "receiveStatusMessage"
QT_MOC_LITERAL(2, 41, 0), // ""
QT_MOC_LITERAL(3, 42, 7), // "message"
QT_MOC_LITERAL(4, 50, 10), // "setVersion"
QT_MOC_LITERAL(5, 61, 7), // "version"
QT_MOC_LITERAL(6, 69, 34), // "on_simComboBox_currentIndexCh..."
QT_MOC_LITERAL(7, 104, 5) // "index"

    },
    "QGCHilConfiguration\0receiveStatusMessage\0"
    "\0message\0setVersion\0version\0"
    "on_simComboBox_currentIndexChanged\0"
    "index"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QGCHilConfiguration[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   29,    2, 0x0a /* Public */,
       4,    1,   32,    2, 0x0a /* Public */,
       6,    1,   35,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::QString,    5,
    QMetaType::Void, QMetaType::Int,    7,

       0        // eod
};

void QGCHilConfiguration::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QGCHilConfiguration *_t = static_cast<QGCHilConfiguration *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->receiveStatusMessage((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->setVersion((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 2: _t->on_simComboBox_currentIndexChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject QGCHilConfiguration::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_QGCHilConfiguration.data,
      qt_meta_data_QGCHilConfiguration,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *QGCHilConfiguration::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QGCHilConfiguration::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_QGCHilConfiguration.stringdata0))
        return static_cast<void*>(const_cast< QGCHilConfiguration*>(this));
    return QWidget::qt_metacast(_clname);
}

int QGCHilConfiguration::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
