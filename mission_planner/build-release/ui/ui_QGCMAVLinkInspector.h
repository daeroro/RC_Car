/********************************************************************************
** Form generated from reading UI file 'QGCMAVLinkInspector.ui'
**
** Created by: Qt User Interface Compiler version 5.5.1
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_QGCMAVLINKINSPECTOR_H
#define UI_QGCMAVLINKINSPECTOR_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTreeWidget>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_QGCMAVLinkInspector
{
public:
    QGridLayout *gridLayout;
    QPushButton *clearButton;
    QLabel *label_2;
    QLabel *label;
    QTreeWidget *treeWidget;
    QTreeWidget *rateTreeWidget;
    QComboBox *systemComboBox;
    QComboBox *componentComboBox;

    void setupUi(QWidget *QGCMAVLinkInspector)
    {
        if (QGCMAVLinkInspector->objectName().isEmpty())
            QGCMAVLinkInspector->setObjectName(QStringLiteral("QGCMAVLinkInspector"));
        QGCMAVLinkInspector->resize(658, 300);
        gridLayout = new QGridLayout(QGCMAVLinkInspector);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        gridLayout->setContentsMargins(6, 6, 6, 6);
        clearButton = new QPushButton(QGCMAVLinkInspector);
        clearButton->setObjectName(QStringLiteral("clearButton"));

        gridLayout->addWidget(clearButton, 0, 4, 1, 1);

        label_2 = new QLabel(QGCMAVLinkInspector);
        label_2->setObjectName(QStringLiteral("label_2"));

        gridLayout->addWidget(label_2, 0, 2, 1, 1);

        label = new QLabel(QGCMAVLinkInspector);
        label->setObjectName(QStringLiteral("label"));

        gridLayout->addWidget(label, 0, 0, 1, 1);

        treeWidget = new QTreeWidget(QGCMAVLinkInspector);
        QTreeWidgetItem *__qtreewidgetitem = new QTreeWidgetItem();
        __qtreewidgetitem->setText(0, QStringLiteral("1"));
        treeWidget->setHeaderItem(__qtreewidgetitem);
        treeWidget->setObjectName(QStringLiteral("treeWidget"));
        treeWidget->setSortingEnabled(false);
        treeWidget->header()->setProperty("showSortIndicator", QVariant(false));

        gridLayout->addWidget(treeWidget, 2, 0, 1, 5);

        rateTreeWidget = new QTreeWidget(QGCMAVLinkInspector);
        QTreeWidgetItem *__qtreewidgetitem1 = new QTreeWidgetItem();
        __qtreewidgetitem1->setText(0, QStringLiteral("1"));
        rateTreeWidget->setHeaderItem(__qtreewidgetitem1);
        rateTreeWidget->setObjectName(QStringLiteral("rateTreeWidget"));

        gridLayout->addWidget(rateTreeWidget, 3, 0, 1, 5);

        systemComboBox = new QComboBox(QGCMAVLinkInspector);
        systemComboBox->setObjectName(QStringLiteral("systemComboBox"));

        gridLayout->addWidget(systemComboBox, 0, 1, 1, 1);

        componentComboBox = new QComboBox(QGCMAVLinkInspector);
        componentComboBox->setObjectName(QStringLiteral("componentComboBox"));

        gridLayout->addWidget(componentComboBox, 0, 3, 1, 1);

        gridLayout->setColumnStretch(0, 2);
        gridLayout->setColumnStretch(1, 8);
        gridLayout->setColumnStretch(2, 2);
        gridLayout->setColumnStretch(3, 8);
        gridLayout->setColumnStretch(4, 3);

        retranslateUi(QGCMAVLinkInspector);

        QMetaObject::connectSlotsByName(QGCMAVLinkInspector);
    } // setupUi

    void retranslateUi(QWidget *QGCMAVLinkInspector)
    {
        QGCMAVLinkInspector->setWindowTitle(QApplication::translate("QGCMAVLinkInspector", "Form", 0));
        clearButton->setText(QApplication::translate("QGCMAVLinkInspector", "Clear", 0));
        label_2->setText(QApplication::translate("QGCMAVLinkInspector", "Component", 0));
        label->setText(QApplication::translate("QGCMAVLinkInspector", "System", 0));
    } // retranslateUi

};

namespace Ui {
    class QGCMAVLinkInspector: public Ui_QGCMAVLinkInspector {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_QGCMAVLINKINSPECTOR_H
