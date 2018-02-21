import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2

ApplicationWindow {
    id: alltextwindow
    width: 350; height: 300
    color: systemPalette.window
    property string text
    TextArea{
        id: script
        anchors.fill: parent
        text: alltextwindow.text
    }
}
