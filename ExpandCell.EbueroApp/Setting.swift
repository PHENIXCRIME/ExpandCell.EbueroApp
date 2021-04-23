//
//  Setting.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 22/4/2564 BE.
//

import Foundation

public enum TypeSetting {
    case aboutSettingCell
    case settingCell
    case headerDetailCell
    case bottomDetailCell
}

public struct SettingData {
    public let about: String?
    public let icon: String?
    public let textSetting: String?
    public let imageHeader: String?
    public let detailHeader: String?
    public let subSetting: String?
    public let type: TypeSetting
    
    init(about: String?=nil, icon: String?=nil, textSetting: String?=nil, imageHeader: String?=nil,
         detailHeader: String?=nil, subSetting: String?=nil, type: TypeSetting) {
        self.about = about
        self.icon = icon
        self.textSetting = textSetting
        self.imageHeader = imageHeader
        self.detailHeader = detailHeader
        self.subSetting = subSetting
        self.type = type
    }
}
