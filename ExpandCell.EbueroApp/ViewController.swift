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
        let settingCell = UINib(nibName: "settingCell", bundle: Bundle.main)
        let headerDetailCell = UINib(nibName: "headerDetailCell", bundle: Bundle.main)
        let bottomDetailCell = UINib(nibName: "bottomDetailCell", bundle: Bundle.main)
        
        tableViewSetting.register(settingCell, forCellReuseIdentifier: "settingCell")
        tableViewSetting.register(headerDetailCell, forCellReuseIdentifier: "headerDetailCell")
        tableViewSetting.register(bottomDetailCell, forCellReuseIdentifier: "bottomDetailCell")
        
    }
    
    func setTypeSetting() {
        dataSetting = [SettingData(icon: "", textSetting: "Secretary's profile", type: .settingCell),
                       SettingData(icon: "", textSetting: "About your company", type: .settingCell),
                       SettingData(icon: "", textSetting: "Forwarding calls to You", type: .settingCell),
                       SettingData(icon: "", textSetting: "Forwarding calls to Us", type: .settingCell),
                       SettingData(icon: "", textSetting: "How to notify you", type: .settingCell),
                       SettingData(icon: "", textSetting: "Calendar settings", type: .settingCell),
                       SettingData(icon: "", textSetting: "Addressbook settings", type: .settingCell),
                       SettingData(icon: "", textSetting: "User settings", type: .settingCell),
                       SettingData(icon: "", textSetting: "Privacy settings", type: .settingCell),
                       SettingData(icon: "", textSetting: "App settings", type: .settingCell)]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSetting.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let setting = dataSetting[indexPath.row]
        
        if setting.type == .settingCell {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: settingCell.identifier, for: indexPath) as! settingCell
            cell.txSetting.text = setting.textSetting
            if let icon = setting.icon {
                cell.iconSetting.image = UIImage(named: icon)?.withRenderingMode(.alwaysTemplate)
            }
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
        case .settingCell:
            return 40
        case .headerDetailCell:
            return 160
        case .bottomDetailCell:
            return 40
        }
    }
    
}

