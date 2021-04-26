//
//  ViewController.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 21/4/2564 BE.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewSetting: UITableView!
    
    var dataSetting: [SettingData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareViews()
        registerCell()
        setTypeSetting()
        
        tableViewSetting.delegate = self
        tableViewSetting.dataSource = self
        
        tableViewSetting.separatorStyle = .none
        tableViewSetting.rowHeight = UITableView.automaticDimension
    }
    
    func prepareViews() {
        
    }
    
    func registerCell() {
        let aboutSettingCell = UINib(nibName: "aboutSettingCell", bundle: Bundle.main)
        let settingCell = UINib(nibName: "settingCell", bundle: Bundle.main)
        let headerDetailCell = UINib(nibName: "headerDetailCell", bundle: Bundle.main)
        let bottomDetailCell = UINib(nibName: "bottomDetailCell", bundle: Bundle.main)
        let cardDetailSettingCell = UINib(nibName:"cardDetailSetting", bundle: Bundle.main)
        
        tableViewSetting.register(aboutSettingCell, forCellReuseIdentifier: "aboutSettingCell")
        tableViewSetting.register(settingCell, forCellReuseIdentifier: "settingCell")
        tableViewSetting.register(headerDetailCell, forCellReuseIdentifier: "headerDetailCell")
        tableViewSetting.register(bottomDetailCell, forCellReuseIdentifier: "bottomDetailCell")
        tableViewSetting.register(cardDetailSettingCell, forCellReuseIdentifier: "cardDetailSetting")
        
    }
    
    func setTypeSetting() {
        dataSetting = [SettingData(about: "What you can manage here", type: .aboutSettingCell),
                       SettingData(icon: "ic_headphone", textSetting: "Secretary's profile", type: .settingCell),
                       SettingData(imageHeader: "imgGreeting", detailHeader:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", type: .headerDetailCell),
                       SettingData(subSetting: "Greeting", type: .bottomDetailCell),
                       SettingData(subSetting: "Instruction", type: .bottomDetailCell),
                       SettingData(subSetting: "Message to Secretary", type: .bottomDetailCell),
                       SettingData(icon: "ic_work", textSetting: "About your company", type: .settingCell),
                       SettingData(icon: "ic_phonForwarded", textSetting: "Forwarding calls to You", type: .settingCell),
                       SettingData(icon: "ic_phonForwarded", textSetting: "Forwarding calls to Us", type: .settingCell),
                       SettingData(icon: "ic_noti", textSetting: "How to notify you", type: .settingCell),
                       SettingData(icon: "ic_calendar", textSetting: "Calendar settings", type: .settingCell),
                       SettingData(icon: "ic_address", textSetting: "Addressbook settings", type: .settingCell),
                       SettingData(icon: "ic_user", textSetting: "User settings", type: .settingCell),
                       SettingData(icon: "ic_fingerprint", textSetting: "Privacy settings", type: .settingCell),
                       SettingData(icon: "ic_phone", textSetting: "App settings", type: .settingCell)]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSetting.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let setting = dataSetting[indexPath.row]
        
        if setting.type == .aboutSettingCell {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: aboutSettingCell.identifier, for: indexPath) as! aboutSettingCell
            cell.txAboutSetting.text = setting.about
            return cell
        }  else if setting.type == .settingCell {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: settingCell.identifier, for: indexPath) as! settingCell
            cell.txSetting.text = setting.textSetting
            if let icon = setting.icon {
                cell.iconSetting.image = UIImage(named: icon)?.withRenderingMode(.alwaysTemplate)
            }
            cell.iconSetting.tintColor = .black
            return cell
        } else if setting.type == .headerDetailCell {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: headerDetailCell.identifier, for: indexPath) as! headerDetailCell
            cell.txDetailHeader.text = setting.detailHeader
            if let image = setting.imageHeader {
                cell.imageHeader.image = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
            }
            return cell
        } else {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: bottomDetailCell.identifier, for: indexPath) as! bottomDetailCell
            cell.txSubSetting.text = setting.subSetting
            return cell
        }
    }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let setting = dataSetting[indexPath.row]
        switch setting.type {
        case .aboutSettingCell:
            return 35
        case .settingCell:
            return 70
        case .headerDetailCell:
            return 160
        case .bottomDetailCell:
            return 60
        case .cardDetailSettingCell:
            return UITableView.automaticDimension
        }
    }
    
}

