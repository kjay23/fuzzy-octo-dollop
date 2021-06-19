import QtQuick 2.10
import QtQuick.Controls 2.3

Page {
    id: page
    width: 600
    height: 400

    title: qsTr("Main Menu")

    Label {
        text: qsTr("Please wait...")
        anchors.centerIn: parent
    }
    states: [
        State {
            name: "State1"
        }
    ]
}
