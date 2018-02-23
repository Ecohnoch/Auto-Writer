import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Window 2.2

Rectangle{
    id: background
    width: 180; height: 600
    border.color: "black"
    border.width: 2

    ScrollView{
        width: 180; height: 600
        y: 2

        Rectangle{
            id: add
            x: 20; y: 10
            width: 20; height: 20
            border.width: 1; border.color: "grey"
            radius: 10
            Text{
                text: "+"
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: manager
            x: 70; y: 10
            width: 60; height: 20
            border.width: 1; border.color: "grey"
            radius: 2
            Text{
                text: "文章管理"
                anchors.centerIn: parent
                font.pixelSize: 10
            }
        }


        ListView{
            id: articleView
            width: parent.width
            model: AWArticleModel{}
            spacing: 10
            anchors.left: parent.left
            anchors.leftMargin: 15
            anchors.top: parent.top
            anchors.topMargin: 40
            delegate: AWArticleBlock{
                mtitle: title; mdate: date; mspace: space
            }
        }
    }
}
