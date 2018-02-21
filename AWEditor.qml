import QtQuick 2.7
import QtQuick.Controls 1.4

ScrollView {
    width: 480; height: 480
    property var info: [
        {title: "故事的背景", menuBox: ["无模板", "模板1", "模板2", "模板3"], actions: [0, 1, 2, 3]},
        {title: "故事的前篇", menuBox: ["无模板", "模板1", "模板2", "模板3"], actions: [0, 1, 2, 3]},
        {title: "故事的中篇", menuBox: ["无模板", "模板1", "模板2", "模板3"], actions: [0, 1, 2, 3]},
        {title: "故事的结尾", menuBox: ["无模板", "模板1", "模板2", "模板3"], actions: [0, 1, 2, 3]}
    ]
    Column{
        id: mainColumn
        spacing: 10
        Component.onCompleted: {
            var len = info.length
            for(var i in info){
                console.log(info[i])
                createCell(info[i])
            }
        }

    }
    property var allSpriteObject: []
    function createCell(atts){
        var component
        var sprite
        function createSpriteObject(){
            component = Qt.createComponent("AWCell.qml")
            if(component.status == Component.Ready) finishCreation()
            else component.statusChanged.connect(finishCreation)
        }
        function finishCreation(){
            if(component.status == Component.Ready){
                sprite = component.createObject(mainColumn, atts)
                allSpriteObject.push(sprite)
                if(sprite == null){
                    console.log("Error when creating a cell")
                }
            }else if(component.status == Component.Error){
                console.log("Error loading component cell")
            }
        }

        createSpriteObject()
    }

    function refresh(newInfo){
        state = "info =" + newInfo
        eval(state)

        while(allSpriteObject.length !== 0){
            var tmp = allSpriteObject.pop()
            console.log(tmp)
            tmp.destroy()
        }

        var len = info.length
        for(var i in info){
            console.log(info[i])
            createCell(info[i])
        }
    }

    function getAllText(){
        var text = ""
        for(var i in allSpriteObject){
            text = text + allSpriteObject[i].getText() + '\n\n'
        }
        return text
    }
}
