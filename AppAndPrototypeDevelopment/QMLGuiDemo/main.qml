import QtQuick 2.12
import QtQuick.Window 2.12

import "imports/controls"

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML GUI Demo")



    TextEdit{
        id: textEdit
        width: 150
        height: 40
        anchors.horizontalCenter:  parent.horizontalCenter
        anchors.top : parent.top
        anchors.topMargin: 30
        verticalAlignment: Text.AlignVCenter
        Rectangle{
            anchors.fill: parent
            color: "transparent"
            border.color: "black"
        }
    }

    MyRadioButton{
        id:radioButton
        width: 50
        height: 50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: textEdit.bottom
        anchors.topMargin: 30
        text: "Custom Radio Button Demo"
    }

    MyCheckBox{
        id:myCheckBox
        width: 50
        height: 50
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: radioButton.bottom
        anchors.topMargin: 30

    }
    MySwitch{
        width: 180
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top : myCheckBox.bottom
        anchors.topMargin: 30
        text: "Switch Button"
    }


}


