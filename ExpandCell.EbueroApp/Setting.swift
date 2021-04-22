//
//  Setting.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 22/4/2564 BE.
//

import Foundation

public enum TypeSetting {
    case settingCell
    case headerCell
    case bottomCell
}

public struct SettingData {
    public let icon: String?
    public let setting: String?
    public let imageHeader: String?
    public let detailHeader: String?
    public let subSetting: String?
    public let type: TypeSetting
    
    init(icon: String?=nil, setting: String?=nil, imageHeader: String?=nil,
         detailHeader: String?=nil, subSetting: String?=nil, type: TypeSetting) {
        self.icon = icon
        self.setting = setting
        self.imageHeader = imageHeader
        self.detailHeader = detailHeader
        self.subSetting = subSetting
        self.type = type
    }
}
