//
//  ViewController.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 21/4/2564 BE.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, cardDetailSettingDelegate{
    
    @IBOutlet weak var tableViewSetting: UITableView!
    
    public var dataSetting: [SettingData] = []
    var selectedIndex: IndexPath = IndexPath(row: 0, section: 0)
    
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
        dataSetting = [SettingData(about: "What you can manage here", typeSetting: .aboutSettingCell),
                       SettingData(icon: "ic_headphone", textSetting: "Secretary's profile", typeSetting: .settingCell),
                       SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, typeSetting: .cardDetailSettingCell),
                       SettingData(icon: "ic_work", textSetting: "About your company", typeSetting: .settingCell),
                       SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, typeSetting: .cardDetailSettingCell),
                       SettingData(icon: "ic_phonForwarded", textSetting: "Forwarding calls to You", typeSetting: .settingCell),
                       SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, typeSetting: .cardDetailSettingCell),
                       SettingData(icon: "ic_phonForwarded", textSetting: "Forwarding calls to You", typeSetting: .settingCell),
                       SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, typeSetting: .cardDetailSettingCell),
                       SettingData(icon: "ic_phonForwarded", textSetting: "Forwarding calls to Us", typeSetting: .settingCell),
                       SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, typeSetting: .cardDetailSettingCell),
                       SettingData(icon: "ic_noti", textSetting: "How to notify you", typeSetting: .settingCell),
                       SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, typeSetting: .cardDetailSettingCell),
                       SettingData(icon: "ic_calendar", textSetting: "Calendar settings", typeSetting: .settingCell),
                       SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, typeSetting: .cardDetailSettingCell),
                       SettingData(icon: "ic_address", textSetting: "Addressbook settings", typeSetting: .settingCell),
                       SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, typeSetting: .cardDetailSettingCell),
                       SettingData(icon: "ic_user", textSetting: "User settings", typeSetting: .settingCell),
                       SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, typeSetting: .cardDetailSettingCell),
                       SettingData(icon: "ic_fingerprint", textSetting: "Privacy settings", typeSetting: .settingCell),
                       SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, typeSetting: .cardDetailSettingCell),
                       SettingData(icon: "ic_phone", textSetting: "App settings", typeSetting: .settingCell),
                       SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, typeSetting: .cardDetailSettingCell)
        ]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSetting.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let setting = dataSetting[indexPath.row]
        
        if setting.typeSetting == .aboutSettingCell {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: aboutSettingCell.identifier, for: indexPath) as! aboutSettingCell
            cell.txAboutSetting.text = setting.about
            return cell
        }  else if setting.typeSetting == .cardDetailSettingCell {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: cardDetailSetting.identifier, for: indexPath) as! cardDetailSetting
            cell.delegate = self
            if setting.defaultDetail == false {
                cell.txDetailHeader.text = setting.previewDetail
                cell.txDetailHeader.numberOfLines = 3
            } else {
                cell.txDetailHeader.text = setting.fullDetail
                cell.txDetailHeader.numberOfLines = 0
            }
            cell.index = indexPath.row
            if let image = setting.imageHeader {
                cell.imgHeader.image = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
            }
            return cell
        }  else {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: settingCell.identifier, for: indexPath) as! settingCell
            cell.txSetting.text = setting.textSetting
            if let icon = setting.icon {
                cell.iconSetting.image = UIImage(named: icon)?.withRenderingMode(.alwaysTemplate)
            }
            cell.iconSetting.tintColor = .black
            return cell
        }
    }
    
    func btnMoreDidTapped(index:Int) {
        
//        if dataSetting[index].defaultDetail == true {
//            dataSetting[index].defaultDetail = false
//        } else {
//            dataSetting[index].defaultDetail = true
//        } * -- this way  simple check variable in array -*
        
//        if dataSetting[index].defaultDetail ?? false  {
//            dataSetting[index].defaultDetail = false
//        } else {
//            dataSetting[index].defaultDetail = true
//        } *-- check with variable don't is type --* 
        
        dataSetting[index].defaultDetail = !(dataSetting[index].defaultDetail ?? false)
        tableViewSetting.reloadData() // way check with don't value this is value >> same on code is don't is false
    }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let setting = dataSetting[indexPath.row]
        switch setting.typeSetting {
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

