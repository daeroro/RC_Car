/****************************************************************************
** Meta object code from reading C++ file 'QGCMessageView.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/ui/uas/QGCMessageView.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QGCMessageView.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QGCMessageView_t {
    QByteArrayData data[13];
    char stringdata0[139];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_QGCMessageView_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_QGCMessageView_t qt_meta_stringdata_QGCMessageView = {
    {
QT_MOC_LITERAL(0, 0, 14), // "QGCMessageView"
QT_MOC_LITERAL(1, 15, 12), // "setActiveUAS"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 13), // "UASInterface*"
QT_MOC_LITERAL(4, 43, 3), // "uas"
QT_MOC_LITERAL(5, 47, 17), // "handleTextMessage"
QT_MOC_LITERAL(6, 65, 5), // "uasid"
QT_MOC_LITERAL(7, 71, 11), // "componentid"
QT_MOC_LITERAL(8, 83, 8), // "severity"
QT_MOC_LITERAL(9, 92, 4), // "text"
QT_MOC_LITERAL(10, 97, 16), // "contextMenuEvent"
QT_MOC_LITERAL(11, 114, 18), // "QContextMenuEvent*"
QT_MOC_LITERAL(12, 133, 5) // "event"

    },
    "QGCMessageView\0setActiveUAS\0\0UASInterface*\0"
    "uas\0handleTextMessage\0uasid\0componentid\0"
    "severity\0text\0contextMenuEvent\0"
    "QContextMenuEvent*\0event"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QGCMessageView[] = {

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
       5,    4,   32,    2, 0x0a /* Public */,
      10,    1,   41,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, QMetaType::Int, QMetaType::Int, QMetaType::Int, QMetaType::QString,    6,    7,    8,    9,
    QMetaType::Void, 0x80000000 | 11,   12,

       0        // eod
};

void QGCMessageView::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QGCMessageView *_t = static_cast<QGCMessageView *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setActiveUAS((*reinterpret_cast< UASInterface*(*)>(_a[1]))); break;
        case 1: _t->handleTextMessage((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3])),(*reinterpret_cast< QString(*)>(_a[4]))); break;
        case 2: _t->contextMenuEvent((*reinterpret_cast< QContextMenuEvent*(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 0:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< UASInterface* >(); break;
            }
            break;
        }
    }
}

const QMetaObject QGCMessageView::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_QGCMessageView.data,
      qt_meta_data_QGCMessageView,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *QGCMessageView::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QGCMessageView::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_QGCMessageView.stringdata0))
        return static_cast<void*>(const_cast< QGCMessageView*>(this));
    return QWidget::qt_metacast(_clname);
}

int QGCMessageView::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
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
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
