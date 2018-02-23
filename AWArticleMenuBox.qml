import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Window 2.2

Rectangle {
    width: 640; height: 50
    border.color: "black"
    border.width: 1
    Row{
        spacing: 10
        anchors.left: parent.left
        anchors.leftMargin: 21
        anchors.top: parent.top
        anchors.topMargin: 10
        Rectangle{
            width: 30; height: 30
            radius: 15
            border.width: 1
            border.color: "grey"
            Text{
                text: "+"
                anchors.centerIn: parent
            }
        }

        Rectangle{
            width: 30; height: 30
            radius: 15
            border.width: 1
            border.color: "grey"
            Text{
                text: "编辑"
                anchors.centerIn: parent
                font.pixelSize: 10
            }
        }

        Rectangle{
            width: 30; height: 30
            radius: 15
            border.width: 1
            border.color: "grey"
            Text{
                text: "渲染"
                anchors.centerIn: parent
                font.pixelSize: 10
            }
        }

        Rectangle{
            width: 30; height: 30
            radius: 15
            border.width: 1
            border.color: "grey"
            Text{
                text: "分享"
                anchors.centerIn: parent
                font.pixelSize: 10
            }
        }
    }

    Rectangle{
        width: 30; height: 30
        radius: 15
        border.width: 1
        border.color: "grey"
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: parent.top
        anchors.topMargin: 10
        Text{
            text: "头像"
            anchors.centerIn: parent
            font.pixelSize: 10
        }
    }
}
