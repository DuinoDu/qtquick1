import QtQuick 1.1

/*
  ToolBar is the set of all functions controlled by the users.
*/

Rectangle {
    id: root
    width: 800; height: 140
    color: "lightblue"

    property int sum: root.ifHideBtn ? 4 : 5
    property int itemWidth: 120

    property bool ifHideBtn: false

    Row{
        id: positioner
        spacing: (root.width - root.itemWidth*root.sum)/(root.sum-1)
        NavItem{
            id: item1
            height: root.height; width: root.itemWidth
            focus: true
            text: "1"
            KeyNavigation.left: item5
            KeyNavigation.right: item2
            onClicked: console.log("1 clicked")
        }
        NavItem{
            id: item2
            height: root.height; width: root.itemWidth
            text: "2"
            KeyNavigation.left: item1
            KeyNavigation.right: item3
            onClicked: console.log("2 clicked")
        }
        NavItem{
            id: item3
            height: root.height; width: root.itemWidth
            text: "3"
            KeyNavigation.left: item2
            KeyNavigation.right: item4
            onClicked: console.log("3 clicked")
        }
        NavItem{
            id: item4
            height: root.height; width: root.itemWidth
            visible: !root.ifHideBtn
            text: "4"
            KeyNavigation.left: item3
            KeyNavigation.right: item5
            onClicked: console.log("4 clicked")
        }
        NavItem{
            id: item5
            height: root.height; width: root.itemWidth
            text: "5"
            KeyNavigation.left: item4
            KeyNavigation.right: item1
            onClicked: console.log("5 clicked")
        }
    }
}
