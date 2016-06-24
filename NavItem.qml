import QtQuick 1.1

Rectangle {

    property string static_color: "#93ff93"
    property string dynamic_color: "#53ff53"
    property alias source: image.source
    property alias text: text.text
    signal clicked()

    id: root
    width: 120; height: 160
    radius: 10
    color: focus ? root.dynamic_color : root.static_color

    Image{
        id: image
        width: 100; height: 100
        //source: "img/icon.png"
        source: ":/img/icon.png"
        anchors{ top: root.top; topMargin: 4; horizontalCenter: parent.horizontalCenter}
    }

    Text{
        id: text
        text: "Button"
        anchors{ top: image.bottom; horizontalCenter: parent.horizontalCenter}
        font.pixelSize: root.width / 6
        font.family: "Microsoft YaHei"
    }

    MouseArea{
        enabled: false
        anchors.fill: parent
        hoverEnabled: true
        onEntered: root.color = root.dynamic_color
        onExited: root.color = root.static_color
        onClicked: root.clicked()
    }

    Keys.onSpacePressed:{
        root.clicked();
    }
}
