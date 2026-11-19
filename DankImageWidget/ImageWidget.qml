import QtQuick
import qs.Common
import qs.Modules.Plugins

DesktopPluginComponent {
    id: root

    minWidth: 64
    minHeight: 64

    property string imagePath: pluginData.imagePath || "/home/scav/Downloads/hhh.gif"

    AnimatedImage {
        anchors.fill: parent
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
