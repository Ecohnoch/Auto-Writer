import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Window 2.2

import QtWebEngine 1.3

Window {
    width: 800; height: 600
    visible: true
    AWArticleBar{
        id: mainTitleBar
    }
    AWArticleMenuBox{
        id: mainTitleMenuBox
        anchors.left: mainTitleBar.right
        anchors.leftMargin: -1
        anchors.top: mainTitleBar.top
    }
    WebEngineView {
        width: 640; height: 550
        anchors.left: mainTitleBar.right
        anchors.top: mainTitleMenuBox.bottom
        url: "http://www.ecohnoch.cn"
    }

}
