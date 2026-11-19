
import QtQuick
import qs.Common
import qs.Modules.Plugins
import qs.DCommon.Widgets

DesktopPluginComponent {
    id: root

    minWidth: 64
    minHeight: 64

    property string imagePath: pluginData.imagePath || ""

    Rectangle {
        anchors.fill: parent
        visible: root.imagePath === ""
        color: Theme.surfaceVariant
        radius: Theme.cornerRadius

        StyledText {
            anchors.centerIn: parent
            width: parent.width - Theme.spacingM * 2
            text: "Choose an image in widget settings"
            color: Theme.surfaceVariantText
            wrapMode: Text.WordWrap
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: Theme.fontSizeMedium
        }
    }

    AnimatedImage {
        anchors.fill: parent
        visible: root.imagePath !== ""
        source: root.imagePath === ""
        ? ""
        : root.imagePath.startsWith("file://")
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

