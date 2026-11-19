import QtQuick
import qs.Common
import qs.Modules.Plugins
import qs.DCommon.Widgets

PluginSettings {
    id: root
    pluginId: "dankImageWidget"

    StyledText {
        text: "Image Widget"
        font.pixelSize: Theme.fontSizeLarge
        font.weight: Font.Bold
        color: Theme.surfaceText
    }

    StringSetting {
        settingKey: "imagePath"
        label: "Image file path"
        description: "Absolute path to the image you want to display"
       placeholder: "/home/username/Pictures/image.gif"
defaultValue: ""
    }
}
