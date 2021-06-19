import QtQuick 2.10
import QtQuick.Controls 2.3

Page {
    id: page
    width: 600
    height: 400

    title: qsTr("Others")

    Text {
        id: text1
        x: 78
        y: 50
        text: qsTr("Entry 1")
        font.pixelSize: 12
    }

    Button {
        id: button
        x: 61
        y: 66
        text: qsTr("Button")
        anchors.horizontalCenter: text1.horizontalCenter

        Connections {
            target: button
            onClicked: page.state = "State1"
        }
    }
    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: text1
                x: 78
                y: 50
                width: 321
                height: 183
                text: qsTr("Entry blah blah blah")
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/
