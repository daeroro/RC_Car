/****************************************************************************
** Meta object code from reading C++ file 'QGCSettingsWidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../src/ui/QGCSettingsWidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'QGCSettingsWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_QGCSettingsWidget_t {
    QByteArrayData data[14];
    char stringdata0[172];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_QGCSettingsWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_QGCSettingsWidget_t qt_meta_stringdata_QGCSettingsWidget = {
    {
QT_MOC_LITERAL(0, 0, 17), // "QGCSettingsWidget"
QT_MOC_LITERAL(1, 18, 9), // "setLogDir"
QT_MOC_LITERAL(2, 28, 0), // ""
QT_MOC_LITERAL(3, 29, 16), // "setMAVLinkLogDir"
QT_MOC_LITERAL(4, 46, 11), // "setParamDir"
QT_MOC_LITERAL(5, 58, 13), // "setAppDataDir"
QT_MOC_LITERAL(6, 72, 14), // "setMissionsDir"
QT_MOC_LITERAL(7, 87, 12), // "ratesChanged"
QT_MOC_LITERAL(8, 100, 14), // "setBetaRelease"
QT_MOC_LITERAL(9, 115, 5), // "state"
QT_MOC_LITERAL(10, 121, 19), // "setHideDonateButton"
QT_MOC_LITERAL(11, 141, 12), // "setActiveUAS"
QT_MOC_LITERAL(12, 154, 13), // "UASInterface*"
QT_MOC_LITERAL(13, 168, 3) // "uas"

    },
    "QGCSettingsWidget\0setLogDir\0\0"
    "setMAVLinkLogDir\0setParamDir\0setAppDataDir\0"
    "setMissionsDir\0ratesChanged\0setBetaRelease\0"
    "state\0setHideDonateButton\0setActiveUAS\0"
    "UASInterface*\0uas"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_QGCSettingsWidget[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   59,    2, 0x08 /* Private */,
       3,    0,   60,    2, 0x08 /* Private */,
       4,    0,   61,    2, 0x08 /* Private */,
       5,    0,   62,    2, 0x08 /* Private */,
       6,    0,   63,    2, 0x08 /* Private */,
       7,    0,   64,    2, 0x08 /* Private */,
       8,    1,   65,    2, 0x08 /* Private */,
      10,    1,   68,    2, 0x08 /* Private */,
      11,    1,   71,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    9,
    QMetaType::Void, QMetaType::Bool,    9,
    QMetaType::Void, 0x80000000 | 12,   13,

       0        // eod
};

void QGCSettingsWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        QGCSettingsWidget *_t = static_cast<QGCSettingsWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->setLogDir(); break;
        case 1: _t->setMAVLinkLogDir(); break;
        case 2: _t->setParamDir(); break;
        case 3: _t->setAppDataDir(); break;
        case 4: _t->setMissionsDir(); break;
        case 5: _t->ratesChanged(); break;
        case 6: _t->setBetaRelease((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 7: _t->setHideDonateButton((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 8: _t->setActiveUAS((*reinterpret_cast< UASInterface*(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 8:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< UASInterface* >(); break;
            }
            break;
        }
    }
}

const QMetaObject QGCSettingsWidget::staticMetaObject = {
    { &QDialog::staticMetaObject, qt_meta_stringdata_QGCSettingsWidget.data,
      qt_meta_data_QGCSettingsWidget,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *QGCSettingsWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *QGCSettingsWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_QGCSettingsWidget.stringdata0))
        return static_cast<void*>(const_cast< QGCSettingsWidget*>(this));
    return QDialog::qt_metacast(_clname);
}

int QGCSettingsWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QDialog::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 9)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 9;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
