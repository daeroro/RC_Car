/****************************************************************************
** Meta object code from reading C++ file 'mapgraphicitem.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../libs/opmapcontrol/src/mapwidget/mapgraphicitem.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mapgraphicitem.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_mapcontrol__MapGraphicItem_t {
    QByteArrayData data[14];
    char stringdata0[175];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_mapcontrol__MapGraphicItem_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_mapcontrol__MapGraphicItem_t qt_meta_stringdata_mapcontrol__MapGraphicItem = {
    {
QT_MOC_LITERAL(0, 0, 26), // "mapcontrol::MapGraphicItem"
QT_MOC_LITERAL(1, 27, 11), // "zoomChanged"
QT_MOC_LITERAL(2, 39, 0), // ""
QT_MOC_LITERAL(3, 40, 9), // "zoomtotal"
QT_MOC_LITERAL(4, 50, 8), // "zoomreal"
QT_MOC_LITERAL(5, 59, 8), // "zoomdigi"
QT_MOC_LITERAL(6, 68, 10), // "mapChanged"
QT_MOC_LITERAL(7, 79, 15), // "SetSelectedArea"
QT_MOC_LITERAL(8, 95, 21), // "internals::RectLatLng"
QT_MOC_LITERAL(9, 117, 5), // "value"
QT_MOC_LITERAL(10, 123, 23), // "Core_OnNeedInvalidation"
QT_MOC_LITERAL(11, 147, 15), // "ChildPosRefresh"
QT_MOC_LITERAL(12, 163, 6), // "resize"
QT_MOC_LITERAL(13, 170, 4) // "rect"

    },
    "mapcontrol::MapGraphicItem\0zoomChanged\0"
    "\0zoomtotal\0zoomreal\0zoomdigi\0mapChanged\0"
    "SetSelectedArea\0internals::RectLatLng\0"
    "value\0Core_OnNeedInvalidation\0"
    "ChildPosRefresh\0resize\0rect"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_mapcontrol__MapGraphicItem[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    3,   49,    2, 0x06 /* Public */,
       6,    0,   56,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       7,    1,   57,    2, 0x0a /* Public */,
      10,    0,   60,    2, 0x08 /* Private */,
      11,    0,   61,    2, 0x08 /* Private */,
      12,    1,   62,    2, 0x0a /* Public */,
      12,    0,   65,    2, 0x2a /* Public | MethodCloned */,

 // signals: parameters
    QMetaType::Void, QMetaType::Double, QMetaType::Double, QMetaType::Double,    3,    4,    5,
    QMetaType::Void,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 8,    9,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::QRectF,   13,
    QMetaType::Void,

       0        // eod
};

void mapcontrol::MapGraphicItem::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MapGraphicItem *_t = static_cast<MapGraphicItem *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->zoomChanged((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< double(*)>(_a[3]))); break;
        case 1: _t->mapChanged(); break;
        case 2: _t->SetSelectedArea((*reinterpret_cast< const internals::RectLatLng(*)>(_a[1]))); break;
        case 3: _t->Core_OnNeedInvalidation(); break;
        case 4: _t->ChildPosRefresh(); break;
        case 5: _t->resize((*reinterpret_cast< const QRectF(*)>(_a[1]))); break;
        case 6: _t->resize(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (MapGraphicItem::*_t)(double , double , double );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MapGraphicItem::zoomChanged)) {
                *result = 0;
            }
        }
        {
            typedef void (MapGraphicItem::*_t)();
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&MapGraphicItem::mapChanged)) {
                *result = 1;
            }
        }
    }
}

const QMetaObject mapcontrol::MapGraphicItem::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_mapcontrol__MapGraphicItem.data,
      qt_meta_data_mapcontrol__MapGraphicItem,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *mapcontrol::MapGraphicItem::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *mapcontrol::MapGraphicItem::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_mapcontrol__MapGraphicItem.stringdata0))
        return static_cast<void*>(const_cast< MapGraphicItem*>(this));
    if (!strcmp(_clname, "QGraphicsItem"))
        return static_cast< QGraphicsItem*>(const_cast< MapGraphicItem*>(this));
    if (!strcmp(_clname, "org.qt-project.Qt.QGraphicsItem"))
        return static_cast< QGraphicsItem*>(const_cast< MapGraphicItem*>(this));
    return QObject::qt_metacast(_clname);
}

int mapcontrol::MapGraphicItem::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 7;
    }
    return _id;
}

// SIGNAL 0
void mapcontrol::MapGraphicItem::zoomChanged(double _t1, double _t2, double _t3)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void mapcontrol::MapGraphicItem::mapChanged()
{
    QMetaObject::activate(this, &staticMetaObject, 1, Q_NULLPTR);
}
QT_END_MOC_NAMESPACE
