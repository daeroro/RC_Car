/****************************************************************************
** Meta object code from reading C++ file 'QGCCommandButton.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/ui/designer/QGCCommandButton.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QGCCommandButton.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QGCCommandButton_t {
    QByteArrayData data[16];
    char stringdata0[162];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_QGCCommandButton_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_QGCCommandButton_t qt_meta_stringdata_QGCCommandButton = {
    {
QT_MOC_LITERAL(0, 0, 16), // "QGCCommandButton"
QT_MOC_LITERAL(1, 17, 9), // "showLabel"
QT_MOC_LITERAL(2, 27, 0), // ""
QT_MOC_LITERAL(3, 28, 4), // "name"
QT_MOC_LITERAL(4, 33, 3), // "num"
QT_MOC_LITERAL(5, 37, 11), // "sendCommand"
QT_MOC_LITERAL(6, 49, 20), // "setCommandButtonName"
QT_MOC_LITERAL(7, 70, 4), // "text"
QT_MOC_LITERAL(8, 75, 13), // "startEditMode"
QT_MOC_LITERAL(9, 89, 11), // "endEditMode"
QT_MOC_LITERAL(10, 101, 13), // "writeSettings"
QT_MOC_LITERAL(11, 115, 10), // "QSettings&"
QT_MOC_LITERAL(12, 126, 8), // "settings"
QT_MOC_LITERAL(13, 135, 12), // "readSettings"
QT_MOC_LITERAL(14, 148, 9), // "QSettings"
QT_MOC_LITERAL(15, 158, 3) // "pre"

    },
    "QGCCommandButton\0showLabel\0\0name\0num\0"
    "sendCommand\0setCommandButtonName\0text\0"
    "startEditMode\0endEditMode\0writeSettings\0"
    "QSettings&\0settings\0readSettings\0"
    "QSettings\0pre"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QGCCommandButton[] = {

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
       1,    2,   54,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       5,    0,   59,    2, 0x0a /* Public */,
       6,    1,   60,    2, 0x0a /* Public */,
       8,    0,   63,    2, 0x0a /* Public */,
       9,    0,   64,    2, 0x0a /* Public */,
      10,    1,   65,    2, 0x0a /* Public */,
      13,    1,   68,    2, 0x0a /* Public */,
      13,    2,   71,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString, QMetaType::Int,    3,    4,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void, QMetaType::QString,    7,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 11,   12,
    QMetaType::Void, 0x80000000 | 14,   12,
    QMetaType::Void, QMetaType::QString, QMetaType::QVariantMap,   15,   12,

       0        // eod
};

void QGCCommandButton::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QGCCommandButton *_t = static_cast<QGCCommandButton *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->showLabel((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 1: _t->sendCommand(); break;
        case 2: _t->setCommandButtonName((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 3: _t->startEditMode(); break;
        case 4: _t->endEditMode(); break;
        case 5: _t->writeSettings((*reinterpret_cast< QSettings(*)>(_a[1]))); break;
        case 6: _t->readSettings((*reinterpret_cast< const QSettings(*)>(_a[1]))); break;
        case 7: _t->readSettings((*reinterpret_cast< const QString(*)>(_a[1])),(*reinterpret_cast< const QVariantMap(*)>(_a[2]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (QGCCommandButton::*_t)(QString , int );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&QGCCommandButton::showLabel)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject QGCCommandButton::staticMetaObject = {
    { &QGCToolWidgetItem::staticMetaObject, qt_meta_stringdata_QGCCommandButton.data,
      qt_meta_data_QGCCommandButton,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *QGCCommandButton::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QGCCommandButton::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_QGCCommandButton.stringdata0))
        return static_cast<void*>(const_cast< QGCCommandButton*>(this));
    return QGCToolWidgetItem::qt_metacast(_clname);
}

int QGCCommandButton::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGCToolWidgetItem::qt_metacall(_c, _id, _a);
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
void QGCCommandButton::showLabel(QString _t1, int _t2)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
