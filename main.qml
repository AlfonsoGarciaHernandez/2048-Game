import QtQuick 2.9
import QtQuick.Window 2.2
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.1


Window {
    id: window
    visible: true
    width: 640
    height: 480
    color: "#d2d2d2"
    property alias rectmain: rectmain
    property alias rectgame: rectgame
    property alias rect44: rect44
    property alias text44: text44
    property alias rect43: rect43
    property alias text43: text43
    property alias rect42: rect42
    property alias text42: text42
    property alias rect33: rect33
    property alias text33: text33
    property alias rect34: rect34
    property alias text34: text34
    property alias rect41: rect41
    property alias text41: text41
    property alias text32: text32
    property alias rect32: rect32
    property alias text31: text31
    property alias rect31: rect31
    property alias text24: text24
    property alias rect24: rect24
    property alias text23: text23
    property alias rect23: rect23
    property alias text22: text22
    property alias rect22: rect22
    property alias text21: text21
    property alias rect21: rect21
    property alias text14: text14
    property alias rect14: rect14
    property alias text13: text13
    property alias rect13: rect13
    property alias text12: text12
    property alias rect12: rect12
    property alias text11: text11
    property alias rect11: rect11
    property alias window: window
    title: qsTr("Hello World")

    Rectangle {
        id: rectmain
        color: "#bbbbbb"
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 20
        anchors.fill: parent
        focus: true
        Keys.onPressed: {
            switch (event.key){
            case Qt.Key_Up :
                vueObjectQML.key_up();
                break;
            case Qt.Key_Down :
                vueObjectQML.key_down();
                break;
            case Qt.Key_Left :
                vueObjectQML.key_left();
                break;
            case Qt.Key_Right :
                vueObjectQML.key_right();
                break;
            }
        }

        Rectangle {
            id: rectgame
            x: 191
            y: 30
            width: 400
            height: 400
            color: "#828282"
            border.color: "#828282"
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter

            Rectangle {
                id: rect11
                width: 90
                height: 90
                color: vueObjectQML.color[0]
                anchors.left: parent.left
                anchors.leftMargin: 5
                anchors.top: parent.top
                anchors.topMargin: 5

                Text {
                    id: text11
                    text: vueObjectQML.box[0]
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    wrapMode: Text.NoWrap
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect12
                x: -8
                y: -5
                width: 90
                height: 90
                color: vueObjectQML.color[1]
                anchors.top: parent.top
                anchors.left: rect11.right
                anchors.topMargin: 5
                anchors.leftMargin: 10

                Text {
                    id: text12
                    text: vueObjectQML.box[1]
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect13
                y: -14
                width: 90
                height: 90
                color: vueObjectQML.color[2]
                anchors.top: parent.top
                anchors.left: rect12.right
                anchors.leftMargin: 10
                anchors.topMargin: 5

                Text {
                    id: text13
                    text: vueObjectQML.box[2]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect14
                y: -4
                height: 90
                color: vueObjectQML.color[3]
                anchors.right: parent.right
                anchors.rightMargin: 5
                anchors.top: parent.top
                anchors.left: rect13.right
                anchors.topMargin: 5
                anchors.leftMargin: 10

                Text {
                    id: text14
                    text: vueObjectQML.box[3]
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect21
                x: -2
                y: 301
                width: 90
                height: 90
                color: vueObjectQML.color[4]
                anchors.top: rect11.bottom
                anchors.left: parent.left
                anchors.topMargin: 10
                anchors.leftMargin: 5

                Text {
                    id: text21
                    text: vueObjectQML.box[4]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect22
                x: -4
                y: -1
                width: 90
                height: 90
                color: vueObjectQML.color[5]
                anchors.top: rect12.bottom
                anchors.left: rect21.right
                anchors.leftMargin: 10
                anchors.topMargin: 10

                Text {
                    id: text22
                    text: vueObjectQML.box[5]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect23
                x: 4
                y: -10
                width: 90
                height: 90
                color: vueObjectQML.color[6]
                anchors.top: rect13.bottom
                anchors.left: rect22.right
                anchors.topMargin: 10
                anchors.leftMargin: 10

                Text {
                    id: text23
                    text: vueObjectQML.box[6]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect24
                x: 395
                y: 0
                height: 90
                color: vueObjectQML.color[7]
                anchors.top: rect14.bottom
                anchors.rightMargin: 5
                anchors.left: rect23.right
                anchors.leftMargin: 10
                anchors.topMargin: 10
                anchors.right: parent.right

                Text {
                    id: text24
                    text: vueObjectQML.box[7]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect31
                x: 2
                width: 90
                height: 90
                color: vueObjectQML.color[8]
                anchors.top: rect21.bottom
                anchors.left: parent.left
                anchors.topMargin: 10
                anchors.leftMargin: 5

                Text {
                    id: text31
                    text: vueObjectQML.box[8]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect32
                width: 90
                height: 90
                color: vueObjectQML.color[9]
                anchors.left: rect31.right
                anchors.leftMargin: 10
                anchors.top: rect22.bottom
                anchors.topMargin: 10

                Text {
                    id: text32
                    text: vueObjectQML.box[9]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect33
                x: -2
                y: -16
                width: 90
                height: 90
                color: vueObjectQML.color[10]
                anchors.top: rect23.bottom
                anchors.left: rect32.right
                anchors.topMargin: 10
                anchors.leftMargin: 10

                Text {
                    id: text33
                    text: vueObjectQML.box[10]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect34
                x: -2
                y: -6
                width: 90
                height: 90
                color: vueObjectQML.color[11]
                anchors.top: rect24.bottom
                anchors.left: rect33.right
                anchors.leftMargin: 10
                anchors.topMargin: 10

                Text {
                    id: text34
                    text: vueObjectQML.box[11]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect41
                x: 4
                y: 4
                width: 90
                height: 90
                color: vueObjectQML.color[12]
                anchors.top: rect31.bottom
                anchors.left: parent.left
                anchors.topMargin: 10
                anchors.leftMargin: 5

                Text {
                    id: text41
                    text: vueObjectQML.box[12]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect42
                x: -10
                y: -7
                width: 90
                height: 90
                color: vueObjectQML.color[13]
                anchors.top: rect32.bottom
                anchors.left: rect41.right
                anchors.topMargin: 10
                anchors.leftMargin: 10

                Text {
                    id: text42
                    text: vueObjectQML.box[13]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect43
                x: -2
                y: -16
                width: 90
                height: 90
                color: vueObjectQML.color[14]
                anchors.top: rect33.bottom
                anchors.left: rect42.right
                anchors.leftMargin: 10
                anchors.topMargin: 10

                Text {
                    id: text43
                    text: vueObjectQML.box[14]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rect44
                x: -2
                y: -6
                width: 90
                height: 90
                color: vueObjectQML.color[15]
                anchors.top: rect34.bottom
                anchors.left: rect43.right
                anchors.topMargin: 10
                anchors.leftMargin: 10

                Text {
                    id: text44
                    text: vueObjectQML.box[15]
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    font.pixelSize: 20
                }
            }
        }

        Text {
            id: title
            height: 100
            color: "#ffffff"
            text: qsTr("2048")
            anchors.right: rectgame.left
            anchors.rightMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 20
            textFormat: Text.AutoText
            wrapMode: Text.NoWrap
            font.weight: Font.Light
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 50
        }


        Button{
            id: buttonexit
            x: -2
            y: 269
            height: 50
            anchors.topMargin: 100
            Text {
                id: exit
                color: "#ffffff"
                text: qsTr("Exit")
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                horizontalAlignment: Text.AlignHCenter
                font.family: "MS Shell Dlg 2"
                font.pixelSize: 20
                font.bold: true
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
            }
            onClicked: {
                Qt.quit()
            }
            anchors.rightMargin: 20
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.right: rectgame.left

        }

        Button {
            id: buttonexit1
            x: -5
            y: 163
            height: 50
            Text {
                id: exit1
                color: "#ffffff"
                text: qsTr("New Game")
                anchors.fill: parent
                font.family: "MS Shell Dlg 2"
                font.pixelSize: 20
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            anchors.topMargin: 100
            anchors.left: parent.left
            anchors.rightMargin: 20
            anchors.right: rectgame.left
            anchors.leftMargin: 20
            onClicked: {
                vueObjectQML.newGame()
            }
        }
    }
}
