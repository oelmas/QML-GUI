import QtQuick 2.12

Item {
    id: root
    width: 50
    height: 50

    property alias text: textLabel.text
    property bool checked: false
    Rectangle{
        id:fillRect
        width: parent.width
        height: width
        radius: width / 2
        color: "transparent"
        border.color: "#A8A8A8"
        Rectangle{
            width: (parent.width - 10)
            height: (parent.height -10)
            anchors.centerIn: parent
            radius: width / 2
            color: "#00D1A9"
            visible: root.checked
        }
    }
    Text{
        id:textLabel
        anchors.left: fillRect.right
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 14
        color: "#A8A8A8"

    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            root.checked = true
        }
    }


}
