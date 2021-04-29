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
    case cardDetailSettingCell
}

public struct SettingData {
    public let about: String?
    public let icon: String?
    public let textSetting: String?
    public let imageHeader: String?
    public let previewDetail: String?
    public let fullDetail: String?
    public let subSetting: String?
    public var defaultDetail: Bool?
    public let typeSetting: TypeSetting
    
    init(about: String?=nil, icon: String?=nil, textSetting: String?=nil, imageHeader: String?=nil,
         previewDetail: String?=nil,fullDetail: String?=nil, subSetting: String?=nil, defaultDetail: Bool?=nil, typeSetting: TypeSetting) {
        self.about = about
        self.icon = icon
        self.textSetting = textSetting
        self.imageHeader = imageHeader
        self.previewDetail = previewDetail 
        self.fullDetail = fullDetail
        self.subSetting = subSetting
        self.defaultDetail = defaultDetail
        self.typeSetting = typeSetting
    }
}
