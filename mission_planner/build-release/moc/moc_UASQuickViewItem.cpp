/****************************************************************************
** Meta object code from reading C++ file 'UASQuickViewItem.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/ui/uas/UASQuickViewItem.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'UASQuickViewItem.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_UASQuickViewItem_t {
    QByteArrayData data[4];
    char stringdata0[43];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_UASQuickViewItem_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_UASQuickViewItem_t qt_meta_stringdata_UASQuickViewItem = {
    {
QT_MOC_LITERAL(0, 0, 16), // "UASQuickViewItem"
QT_MOC_LITERAL(1, 17, 16), // "showSelectDialog"
QT_MOC_LITERAL(2, 34, 0), // ""
QT_MOC_LITERAL(3, 35, 7) // "current"

    },
    "UASQuickViewItem\0showSelectDialog\0\0"
    "current"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_UASQuickViewItem[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   19,    2, 0x06 /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::QString,    3,

       0        // eod
};

void UASQuickViewItem::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        UASQuickViewItem *_t = static_cast<UASQuickViewItem *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->showSelectDialog((*reinterpret_cast< QString(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        void **func = reinterpret_cast<void **>(_a[1]);
        {
            typedef void (UASQuickViewItem::*_t)(QString );
            if (*reinterpret_cast<_t *>(func) == static_cast<_t>(&UASQuickViewItem::showSelectDialog)) {
                *result = 0;
            }
        }
    }
}

const QMetaObject UASQuickViewItem::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_UASQuickViewItem.data,
      qt_meta_data_UASQuickViewItem,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *UASQuickViewItem::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *UASQuickViewItem::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_UASQuickViewItem.stringdata0))
        return static_cast<void*>(const_cast< UASQuickViewItem*>(this));
    return QWidget::qt_metacast(_clname);
}

int UASQuickViewItem::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}

// SIGNAL 0
void UASQuickViewItem::showSelectDialog(QString _t1)
{
    void *_a[] = { Q_NULLPTR, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
