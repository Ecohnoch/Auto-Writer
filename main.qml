import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    SystemPalette{id: systemPalette}

    AWEditor{
        id: mainEditor
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Column{
        spacing: 15
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 10

        Button{
            id: writeSpcipt
            text: "撰写脚本"
            onClicked: scriptwindow.show()//mainEditor.refresh()
        }
        Button{
            id: getAllText
            text: "获得全文"
            onClicked: {
                alltextwindow.text = mainEditor.getAllText()
                alltextwindow.show()
            }
        }
    }

    AWAllTextWindow{
        id: alltextwindow
    }

    AWScriptWindow{
        id: scriptwindow
    }



}
