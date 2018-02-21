import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2

ApplicationWindow {
    id: scriptwindow
    width: 350; height: 300
    color: systemPalette.window
    Button{
        id: doIt
        text: "应用"
        width: 40
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 5
        onClicked: {
            try{
                mainEditor.refresh(script.text)
                sureDialog.doOK()
            }catch(err){
                console.log(err)
                sureDialog.doFail()
            }
        }
    }

    TextArea{
        id: script
        x: 50; y: 0
        width: 300; height: 300
        text: "[
        {title: \"故事的背景\", menuBox: [\"无模板\", \"模板1\", \"模板2\", \"模板3\"], actions: [0, 1, 2, 3]},
        {title: \"故事的前篇\", menuBox: [\"无模板\", \"模板1\", \"模板2\", \"模板3\"], actions: [0, 1, 2, 3]},
        {title: \"故事的中篇\", menuBox: [\"无模板\", \"模板1\", \"模板2\", \"模板3\"], actions: [0, 1, 2, 3]},
        {title: \"故事的结尾\", menuBox: [\"无模板\", \"模板1\", \"模板2\", \"模板3\"], actions: [0, 1, 2, 3]}
        ]"
    }







    MessageDialog{
           id:sureDialog
           standardButtons: StandardButton.Yes
           title: "请先登录"
           text:"请先登录"
           onYes:{sureDialog.close()}
           function doOK(){
               sureDialog.title = "应用成功"
               sureDialog.text = "应用成功"
               sureDialog.open()
           }
           function doFail(){
               sureDialog.title = "脚本语法错误"
               sureDialog.text = "脚本语法错误"
               sureDialog.open()
           }
    }
}
