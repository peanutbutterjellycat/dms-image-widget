
import QtQuick
import qs.Common
import qs.Modules.Plugins

DesktopPluginComponent {
    id: root

    minWidth: 64
    minHeight: 64

    property string imagePath: pluginData.imagePath || ""

    Rectangle {
        anchors.fill: parent
        visible: root.imagePath === ""
        color: Theme.surfaceVariant
        radius: 8

        Text {
            anchors.centerIn: parent
            width: parent.width - 20
            text: "Choose an image in widget settings"
            color: Theme.surfaceVariantText
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
        }
    }

    AnimatedImage {
        anchors.fill: parent
        visible: root.imagePath !== ""
        source: root.imagePath.startsWith("file://")
                ? root.imagePath
                : "file://" + root.imagePath
        fillMode: Image.PreserveAspectFit
        asynchronous: true
        cache: false
        smooth: true
        playing: true
        speed: 1.0
    }
}
