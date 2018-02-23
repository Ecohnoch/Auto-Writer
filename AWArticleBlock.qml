import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Window 2.2

Rectangle {
    width: 140; height: 60
    border.width: 2
    border.color: "grey"
    radius: 5
    property string mtitle: "文章的标题"
    property string mdate: "2018-2-22"
    property string mspace: "9.4KB"

    Label{
        id: title
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.bottom: date.top
        anchors.bottomMargin: 5
        text: mtitle
    }
    Label{
        id: date
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        color: "grey"
        text: mdate
        font.pixelSize: 10
    }
    Label{
        id: space
        anchors.left: date.right
        anchors.leftMargin: 10
        anchors.top: date.top
        color: "grey"
        text: mspace
        font.pixelSize: 10
    }
}
