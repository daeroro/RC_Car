/****************************************************************************
** Meta object code from reading C++ file 'senseSoarMAV.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/uas/senseSoarMAV.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'senseSoarMAV.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_senseSoarMAV_t {
    QByteArrayData data[7];
    char stringdata0[75];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_senseSoarMAV_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_senseSoarMAV_t qt_meta_stringdata_senseSoarMAV = {
    {
QT_MOC_LITERAL(0, 0, 12), // "senseSoarMAV"
QT_MOC_LITERAL(1, 13, 14), // "receiveMessage"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 14), // "LinkInterface*"
QT_MOC_LITERAL(4, 44, 4), // "link"
QT_MOC_LITERAL(5, 49, 17), // "mavlink_message_t"
QT_MOC_LITERAL(6, 67, 7) // "message"

    },
    "senseSoarMAV\0receiveMessage\0\0"
    "LinkInterface*\0link\0mavlink_message_t\0"
    "message"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_senseSoarMAV[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    2,   19,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3, 0x80000000 | 5,    4,    6,

       0        // eod
};

void senseSoarMAV::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        senseSoarMAV *_t = static_cast<senseSoarMAV *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->receiveMessage((*reinterpret_cast< LinkInterface*(*)>(_a[1])),(*reinterpret_cast< mavlink_message_t(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 0:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< LinkInterface* >(); break;
            }
            break;
        }
    }
}

const QMetaObject senseSoarMAV::staticMetaObject = {
    { &UAS::staticMetaObject, qt_meta_stringdata_senseSoarMAV.data,
      qt_meta_data_senseSoarMAV,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *senseSoarMAV::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *senseSoarMAV::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_senseSoarMAV.stringdata0))
        return static_cast<void*>(const_cast< senseSoarMAV*>(this));
    if (!strcmp(_clname, "org.qgroundcontrol/1.0"))
        return static_cast< UASInterface*>(const_cast< senseSoarMAV*>(this));
    return UAS::qt_metacast(_clname);
}

int senseSoarMAV::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = UAS::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
