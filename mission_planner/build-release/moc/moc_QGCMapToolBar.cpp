/****************************************************************************
** Meta object code from reading C++ file 'QGCMapToolBar.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/ui/map/QGCMapToolBar.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QGCMapToolBar.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QGCMapToolBar_t {
    QByteArrayData data[11];
    char stringdata0[139];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_QGCMapToolBar_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_QGCMapToolBar_t qt_meta_stringdata_QGCMapToolBar = {
    {
QT_MOC_LITERAL(0, 0, 13), // "QGCMapToolBar"
QT_MOC_LITERAL(1, 14, 13), // "tileLoadStart"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 11), // "tileLoadEnd"
QT_MOC_LITERAL(4, 41, 16), // "tileLoadProgress"
QT_MOC_LITERAL(5, 58, 8), // "progress"
QT_MOC_LITERAL(6, 67, 15), // "setUAVTrailTime"
QT_MOC_LITERAL(7, 83, 19), // "setUAVTrailDistance"
QT_MOC_LITERAL(8, 103, 17), // "setUpdateInterval"
QT_MOC_LITERAL(9, 121, 10), // "setMapType"
QT_MOC_LITERAL(10, 132, 6) // "goHome"

    },
    "QGCMapToolBar\0tileLoadStart\0\0tileLoadEnd\0"
    "tileLoadProgress\0progress\0setUAVTrailTime\0"
    "setUAVTrailDistance\0setUpdateInterval\0"
    "setMapType\0goHome"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QGCMapToolBar[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       8,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   54,    2, 0x0a /* Public */,
       3,    0,   55,    2, 0x0a /* Public */,
       4,    1,   56,    2, 0x0a /* Public */,
       6,    0,   59,    2, 0x0a /* Public */,
       7,    0,   60,    2, 0x0a /* Public */,
       8,    0,   61,    2, 0x0a /* Public */,
       9,    0,   62,    2, 0x0a /* Public */,
      10,    0,   63,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,    5,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void QGCMapToolBar::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QGCMapToolBar *_t = static_cast<QGCMapToolBar *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->tileLoadStart(); break;
        case 1: _t->tileLoadEnd(); break;
        case 2: _t->tileLoadProgress((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: _t->setUAVTrailTime(); break;
        case 4: _t->setUAVTrailDistance(); break;
        case 5: _t->setUpdateInterval(); break;
        case 6: _t->setMapType(); break;
        case 7: _t->goHome(); break;
        default: ;
        }
    }
}

const QMetaObject QGCMapToolBar::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_QGCMapToolBar.data,
      qt_meta_data_QGCMapToolBar,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *QGCMapToolBar::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QGCMapToolBar::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_QGCMapToolBar.stringdata0))
        return static_cast<void*>(const_cast< QGCMapToolBar*>(this));
    return QWidget::qt_metacast(_clname);
}

int QGCMapToolBar::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
QT_END_MOC_NAMESPACE
