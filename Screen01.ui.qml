import QtQuick 6.7
import QtQuick.Controls 6.7
import UntitledProject
import QtQuick.Studio.DesignEffects

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: Constants.backgroundColor
    border.width: 18

    TextField {
        id: inputField
        width: 205
        height: 43
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 230
        anchors.verticalCenterOffset: 7
        placeholderText: "Enter radius"
        inputMethodHints: Qt.ImhDigitsOnly
    }

    TextField {
        id: inputField2
        width: 205
        height: 43
        anchors.verticalCenter: parent.verticalCenter
        placeholderText: "Enter color in hex"
        anchors.verticalCenterOffset: -70
        anchors.horizontalCenterOffset: 230
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextField {
        id: inputField3
        width: 205
        height: 43
        anchors.verticalCenter: parent.verticalCenter
        placeholderText: "Enter border width"
        inputMethodHints: Qt.ImhDigitsOnly
        anchors.verticalCenterOffset: -140
        anchors.horizontalCenterOffset: 230
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextField {
        id: inputField4
        width: 205
        height: 43
        anchors.verticalCenter: parent.verticalCenter
        placeholderText: "Enter rotation (degrees)"
        inputMethodHints: Qt.ImhDigitsOnly
        anchors.verticalCenterOffset: -210
        anchors.horizontalCenterOffset: 230
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Button {
        id: button
        width: 205
        height: 44
        text: qsTr("Press me")
        anchors.verticalCenter: parent.verticalCenter
        smooth: false
        topPadding: 10
        font.bold: true
        font.pointSize: 19
        font.family: "Verdana"
        anchors.horizontalCenterOffset: 230
        anchors.verticalCenterOffset: 87
        anchors.horizontalCenter: parent.horizontalCenter
        checkable: true
        DesignEffect {
            backgroundBlurRadius: 11
            effects: [
                DesignDropShadow {}
            ]
        }
    }

    Rectangle {
        id: circle
        width: 100 // Initial size
        height: width
        radius: width / 2 // This makes it a circle
        color: "#00ffffff"
        border.color: "#7e000000"
        border.width: 10
        anchors.verticalCenterOffset: -399
        anchors.horizontalCenterOffset: 452
        anchors.centerIn: parent
    }

    Rectangle {
        id: dialBackground2
        width: 516
        height: 516
        color: "#202020"
        radius: width / 2
        border.color: "#303030"
        border.width: 5
        anchors.verticalCenterOffset: 119
        anchors.horizontalCenterOffset: -162
        anchors.centerIn: parent
    }

    Item {
        id: arcContainer2
        width: dialBackground2.width
        height: dialBackground2.height
        property real startAngle: 180
        property int segments: 60
        property real endAngle: 180
        Repeater {
            model: arcContainer2.segments
            Rectangle {
                x: arcContainer2.width / 2
                y: 10
                width: 2
                height: dialBackground2.height / 2 - 10
                color: "#f3e612"
                transformOrigin: Item.Bottom
                rotation: arcContainer2.startAngle
                          + (arcContainer2.endAngle - arcContainer2.startAngle)
                          * (index / (arcContainer2.segments - 1))
                antialiasing: true
            }
        }
        anchors.centerIn: dialBackground2
    }

    Rectangle {
        id: circle1
        width: 100
        height: width
        color: "#ffffff"
        radius: width / 2
        border.color: "#000000"
        border.width: 10
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#231557"
            }

            GradientStop {
                position: 0.27655
                color: "#44107a"
            }

            GradientStop {
                position: 0.50218
                color: "#231557"
            }

            GradientStop {
                position: 0.74568
                color: "#ff1361"
            }

            GradientStop {
                position: 1
                color: "#fff800"
            }

            orientation: Gradient.Vertical
        }
        anchors.verticalCenterOffset: -399
        anchors.horizontalCenterOffset: 452
        anchors.centerIn: parent
    }

    Rectangle {
        id: dialBackground1
        width: 435
        height: 435
        color: "#202020"
        radius: width / 2
        border.color: "#303030"
        border.width: 5

        anchors.verticalCenterOffset: 119
        anchors.horizontalCenterOffset: -162
        anchors.centerIn: parent
    }


    /*Rectangle {
        id: needle1
        width: 48
        height: 215
        color: "#006f8f"
        radius: 5
        anchors.verticalCenterOffset: -107
        anchors.horizontalCenterOffset: 1
        transformOrigin: Item.Bottom
        rotation: -180
        anchors.centerIn: dialBackground1
    }*/
    Item {
        id: arcContainer
        width: dialBackground1.width
        height: dialBackground1.height
        anchors.centerIn: dialBackground1

        property real startAngle: -180
        property real endAngle: -180
        property int segments: 1200 // More segments for smoother arc

        Repeater {
            model: arcContainer.segments

            Rectangle {
                width: 2
                height: dialBackground1.height / 2 - 10
                color: "#006f8f" // Yellow color
                antialiasing: true
                x: arcContainer.width / 2
                y: 10
                transformOrigin: Item.Bottom
                rotation: arcContainer.startAngle + (arcContainer.endAngle
                                                     - arcContainer.startAngle)
                          * (index / (arcContainer.segments - 1))
            }
        }
    }

    Rectangle {
        id: dialBackground
        width: 300
        height: 300
        radius: width / 2
        color: "#202020"
        border.color: "#303030"
        border.width: 5
        anchors.verticalCenterOffset: 119
        anchors.horizontalCenterOffset: -163
        anchors.centerIn: parent

        Text {
            id: text1
            x: 30
            y: 213
            width: 17
            height: 21
            color: "#ffffff"
            text: qsTr("0")
            font.pixelSize: 16
            font.family: "Tahoma"
        }

        Text {
            id: text2
            x: 247
            y: 213
            width: 28
            height: 21
            color: "#ffffff"
            text: qsTr("120")
            font.pixelSize: 16
            font.family: "Tahoma"
        }

        Text {
            id: text3
            x: 134
            y: 213
            width: 32
            height: 21
            color: "#ffffff"
            text: qsTr("kmph")
            font.pixelSize: 16
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
        }
    }

    Item {
        id: arcContainer1
        width: dialBackground1.width
        height: dialBackground1.height
        anchors.verticalCenterOffset: 68
        anchors.horizontalCenterOffset: 0
        anchors.centerIn: dialBackground1

        property real startAngle: 240
        property real endAngle: 480
        property int segments: 20 // More segments for smoother arc

        Repeater {
            model: arcContainer1.segments

            Rectangle {
                width: 5
                height: dialBackground.height / 2 - 10
                color: "#f3e612"
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#6baccbee"
                    }

                    GradientStop {
                        position: 0.27197
                        color: "#00e7f0fd"
                    }
                    orientation: Gradient.Vertical
                }
                // Yellow color
                antialiasing: true
                x: arcContainer1.width / 2
                y: 10
                transformOrigin: Item.Bottom
                rotation: arcContainer1.startAngle
                          + (arcContainer1.endAngle - arcContainer1.startAngle)
                          * (index / (arcContainer1.segments - 1))

                DesignEffect {
                    effects: [
                        DesignDropShadow {}
                    ]
                }
            }
        }
    }

    Rectangle {
        id: needle
        x: 529
        y: 498
        width: 7
        height: 120
        color: "#941100"
        radius: 5
        anchors.verticalCenterOffset: -dialBackground.height / 5
        anchors.centerIn: dialBackground
        transformOrigin: Item.Bottom
        // Static rotation example
        rotation: -120
    }

    Text {
        id: speedDisplay
        text: "0"
        font.pixelSize: 36
        horizontalAlignment: Text.AlignHCenter
        font.bold: true
        font.family: "Verdana"
        anchors.verticalCenterOffset: 102
        anchors.horizontalCenterOffset: 0
        color: "#ffffff"
        anchors.horizontalCenter: dialBackground.horizontalCenter
        anchors.verticalCenter: dialBackground.verticalCenter
        font.letterSpacing: 1
    }

    Slider {
        id: slider
        x: 90
        y: 99
        width: 827
        height: 40
        value: 0
    }

    states: [
        State {
            name: "clicked"
            when: button.checked
            PropertyChanges {
                target: circle
                width: inputField.text * 2 // Diameter is twice the radius
                height: width
                //color: inputField2.text
                border.width: inputField3.text
                rotation: inputField4.text
            }
            PropertyChanges {
                target: circle1
                width: inputField.text * 2 // Diameter is twice the radius
                height: width
                //color: inputField2.text
                border.width: inputField3.text
                //rotation: inputField4.text
            }
            PropertyChanges {
                target: needle
                rotation: inputField4.text - 90
                needle.rotation: inputField4.text
            }
            PropertyChanges {
                target: speedDisplay
                text: (2 / 3 * inputField4.text).toFixed(2)
            }
        },

        State {
            name: "sliderActive"
            when: slider.value > 0 // Example condition, use as needed
            PropertyChanges {
                target: needle
                rotation: 240 * slider.value - 120
            }
            PropertyChanges {
                target: speedDisplay
                text: (2 / 3 * (180 * slider.value)).toFixed(2)
            }
            PropertyChanges {
                target: arcContainer
                endAngle: -180 + 360 * slider.value
            }

            PropertyChanges {
                target: arcContainer2
                endAngle: 180 - 360 * slider.value
                segments: slider.value * 100
            }
        }
    ]

    transitions: Transition {
        from: "*"
        to: "clicked"
        ParallelAnimation {
            SequentialAnimation {
                PropertyAnimation {
                    target: circle
                    properties: "width,height,color,border.width,rotation"
                    duration: 500
                }
            }
            SequentialAnimation {
                PropertyAnimation {
                    target: circle1
                    properties: "width,height,color,border.width"
                    duration: 500
                }
            }
            SequentialAnimation {
                PropertyAnimation {
                    target: needle
                    properties: "rotation"
                    duration: 500
                }
            }
            SequentialAnimation {
                PropertyAnimation {
                    target: speedDisplay
                    properties: "text"
                    duration: 500
                }
            }
        }
    }
}
