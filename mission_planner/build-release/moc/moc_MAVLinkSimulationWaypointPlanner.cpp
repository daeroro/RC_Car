/****************************************************************************
** Meta object code from reading C++ file 'MAVLinkSimulationWaypointPlanner.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/comm/MAVLinkSimulationWaypointPlanner.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'MAVLinkSimulationWaypointPlanner.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_MAVLinkSimulationWaypointPlanner_t {
    QByteArrayData data[6];
    char stringdata0[82];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MAVLinkSimulationWaypointPlanner_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MAVLinkSimulationWaypointPlanner_t qt_meta_stringdata_MAVLinkSimulationWaypointPlanner = {
    {
QT_MOC_LITERAL(0, 0, 32), // "MAVLinkSimulationWaypointPlanner"
QT_MOC_LITERAL(1, 33, 11), // "messageSent"
QT_MOC_LITERAL(2, 45, 0), // ""
QT_MOC_LITERAL(3, 46, 17), // "mavlink_message_t"
QT_MOC_LITERAL(4, 64, 3), // "msg"
QT_MOC_LITERAL(5, 68, 13) // "handleMessage"

    },
    "MAVLinkSimulationWaypointPlanner\0"
    "messageSent\0\0mavlink_message_t\0msg\0"
    "handleMessage"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MAVLinkSimulationWaypointPlanner[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   24,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       5,    1,   27,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    4,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,

       0        // eod
};

void MAVLinkSimulationWaypointPlanner::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MAVLinkSimulationWaypointPlanner *_t = static_cast<MAVLinkSimulationWaypointPlanner *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->messageSent((*reinterpret_cast< const mavlink_message_t(*)>(_a[1]))); break;
        case 1: _t->handleMessage((*reinterpret_cast< const mavlink_message_t(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (MAVLinkSimulationWaypointPlanner::*_t)(const mavlink_message_t & );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MAVLinkSimulationWaypointPlanner::messageSent)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject MAVLinkSimulationWaypointPlanner::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_MAVLinkSimulationWaypointPlanner.data,
      qt_meta_data_MAVLinkSimulationWaypointPlanner,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *MAVLinkSimulationWaypointPlanner::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MAVLinkSimulationWaypointPlanner::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_MAVLinkSimulationWaypointPlanner.stringdata0))
        return static_cast<void*>(const_cast< MAVLinkSimulationWaypointPlanner*>(this));
    return QObject::qt_metacast(_clname);
}

int MAVLinkSimulationWaypointPlanner::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}

// SIGNAL 0
void MAVLinkSimulationWaypointPlanner::messageSent(const mavlink_message_t & _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
