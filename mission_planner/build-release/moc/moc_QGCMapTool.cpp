/****************************************************************************
** Meta object code from reading C++ file 'QGCMapTool.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/ui/map/QGCMapTool.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QGCMapTool.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QGCMapTool_t {
    QByteArrayData data[15];
    char stringdata0[180];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_QGCMapTool_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_QGCMapTool_t qt_meta_stringdata_QGCMapTool = {
    {
QT_MOC_LITERAL(0, 0, 10), // "QGCMapTool"
QT_MOC_LITERAL(1, 11, 17), // "visibilityChanged"
QT_MOC_LITERAL(2, 29, 0), // ""
QT_MOC_LITERAL(3, 30, 7), // "visible"
QT_MOC_LITERAL(4, 38, 10), // "setMapZoom"
QT_MOC_LITERAL(5, 49, 4), // "zoom"
QT_MOC_LITERAL(6, 54, 7), // "setZoom"
QT_MOC_LITERAL(7, 62, 12), // "activeUASSet"
QT_MOC_LITERAL(8, 75, 13), // "UASInterface*"
QT_MOC_LITERAL(9, 89, 12), // "uasInterface"
QT_MOC_LITERAL(10, 102, 20), // "globalPositionUpdate"
QT_MOC_LITERAL(11, 123, 14), // "gpsHdopChanged"
QT_MOC_LITERAL(12, 138, 5), // "value"
QT_MOC_LITERAL(13, 144, 13), // "gpsFixChanged"
QT_MOC_LITERAL(14, 158, 21) // "satelliteCountChanged"

    },
    "QGCMapTool\0visibilityChanged\0\0visible\0"
    "setMapZoom\0zoom\0setZoom\0activeUASSet\0"
    "UASInterface*\0uasInterface\0"
    "globalPositionUpdate\0gpsHdopChanged\0"
    "value\0gpsFixChanged\0satelliteCountChanged"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QGCMapTool[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   54,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    1,   57,    2, 0x0a /* Public */,
       6,    1,   60,    2, 0x0a /* Public */,
       7,    1,   63,    2, 0x08 /* Private */,
      10,    0,   66,    2, 0x08 /* Private */,
      11,    2,   67,    2, 0x08 /* Private */,
      13,    2,   72,    2, 0x08 /* Private */,
      14,    2,   77,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, QMetaType::Bool,    3,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    5,
    QMetaType::Void, QMetaType::Int,    5,
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double, QMetaType::QString,   12,    2,
    QMetaType::Void, QMetaType::Int, QMetaType::QString,    2,    2,
    QMetaType::Void, QMetaType::Int, QMetaType::QString,   12,    2,

       0        // eod
};

void QGCMapTool::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QGCMapTool *_t = static_cast<QGCMapTool *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->visibilityChanged((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: _t->setMapZoom((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: _t->setZoom((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->activeUASSet((*reinterpret_cast< UASInterface*(*)>(_a[1]))); break;
        case 4: _t->globalPositionUpdate(); break;
        case 5: _t->gpsHdopChanged((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 6: _t->gpsFixChanged((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        case 7: _t->satelliteCountChanged((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< const QString(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (QGCMapTool::*_t)(bool );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QGCMapTool::visibilityChanged)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject QGCMapTool::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_QGCMapTool.data,
      qt_meta_data_QGCMapTool,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *QGCMapTool::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QGCMapTool::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_QGCMapTool.stringdata0))
        return static_cast<void*>(const_cast< QGCMapTool*>(this));
    return QWidget::qt_metacast(_clname);
}

int QGCMapTool::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 8)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 8;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 8)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 8;
    }
    return _id;
}

// SIGNAL 0
void QGCMapTool::visibilityChanged(bool _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
