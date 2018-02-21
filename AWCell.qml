import QtQuick 2.7
import QtQuick.Controls 1.4

Rectangle {
    id: allArea
    width: 400; height: 400
    border.width: 4
    border.color: "grey"
    property string text: ""
    property string title: "name"
    property var menuBox: ['模板1', '模板2', '模板3']
    property var actions: [1, 2, 3]
    property var actionIndex: AWActions{}

    Label{
        id: titleLabel
        anchors.horizontalCenter: parent.horizontalCenter
        text: allArea.title
        y: 0
    }
    ComboBox{
        id: menu
        width: 60; height: 10
        anchors.left: titleLabel.right
        anchors.leftMargin: 10
        anchors.top: titleLabel.top
        anchors.verticalCenter: titleLabel.verticalCenter
        model: allArea.menuBox
        onCurrentIndexChanged: {
            var func = actionIndex.runAction(actions[currentIndex])
            func(textarea)
            console.log("模板改变", currentIndex)
        }
    }

    TextArea{
        id: textarea
        width: 370; height: 370
        anchors.centerIn: parent
    }

    function getText(){
        return textarea.text
    }

}
