/****************************************************************************
** Meta object code from reading C++ file 'MAVLinkSettingsWidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/ui/MAVLinkSettingsWidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'MAVLinkSettingsWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_MAVLinkSettingsWidget_t {
    QByteArrayData data[11];
    char stringdata0[127];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MAVLinkSettingsWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MAVLinkSettingsWidget_t qt_meta_stringdata_MAVLinkSettingsWidget = {
    {
QT_MOC_LITERAL(0, 0, 21), // "MAVLinkSettingsWidget"
QT_MOC_LITERAL(1, 22, 17), // "updateLogfileName"
QT_MOC_LITERAL(2, 40, 0), // ""
QT_MOC_LITERAL(3, 41, 8), // "fileName"
QT_MOC_LITERAL(4, 50, 17), // "chooseLogfileName"
QT_MOC_LITERAL(5, 68, 13), // "enableDroneOS"
QT_MOC_LITERAL(6, 82, 6), // "enable"
QT_MOC_LITERAL(7, 89, 13), // "setDroneOSKey"
QT_MOC_LITERAL(8, 103, 3), // "key"
QT_MOC_LITERAL(9, 107, 14), // "setDroneOSHost"
QT_MOC_LITERAL(10, 122, 4) // "host"

    },
    "MAVLinkSettingsWidget\0updateLogfileName\0"
    "\0fileName\0chooseLogfileName\0enableDroneOS\0"
    "enable\0setDroneOSKey\0key\0setDroneOSHost\0"
    "host"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MAVLinkSettingsWidget[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x0a /* Public */,
       4,    0,   42,    2, 0x0a /* Public */,
       5,    1,   43,    2, 0x0a /* Public */,
       7,    1,   46,    2, 0x0a /* Public */,
       9,    1,   49,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    6,
    QMetaType::Void, QMetaType::QString,    8,
    QMetaType::Void, QMetaType::QString,   10,

       0        // eod
};

void MAVLinkSettingsWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MAVLinkSettingsWidget *_t = static_cast<MAVLinkSettingsWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateLogfileName((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->chooseLogfileName(); break;
        case 2: _t->enableDroneOS((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 3: _t->setDroneOSKey((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 4: _t->setDroneOSHost((*reinterpret_cast< QString(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject MAVLinkSettingsWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_MAVLinkSettingsWidget.data,
      qt_meta_data_MAVLinkSettingsWidget,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *MAVLinkSettingsWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MAVLinkSettingsWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_MAVLinkSettingsWidget.stringdata0))
        return static_cast<void*>(const_cast< MAVLinkSettingsWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int MAVLinkSettingsWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
