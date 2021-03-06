//
//  ViewController.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 21/4/2564 BE.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, cardDetailSettingDelegate, cardDetailSettingCellDelegate {
    
    @IBOutlet weak var tableViewSetting: SettingTableView!
    
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
        
        /* old cell */
        let aboutSettingCell = UINib(nibName: "AboutSettingCell", bundle: Bundle.main)
        let settingCell = UINib(nibName: "SettingCell", bundle: Bundle.main)
        let headerDetailCell = UINib(nibName: "HeaderDetailCell", bundle: Bundle.main)
        let bottomDetailCell = UINib(nibName: "BottomDetailCell", bundle: Bundle.main)
        let cardSettingCell = UINib(nibName: "CardSettingCell", bundle: Bundle.main)
        let cardDetailSettingCell = UINib(nibName: "CardDetailSettingCell", bundle: Bundle.main)
        
        tableViewSetting.register(aboutSettingCell, forCellReuseIdentifier: "aboutSettingCell")
        tableViewSetting.register(settingCell, forCellReuseIdentifier: "settingCell")
        tableViewSetting.register(headerDetailCell, forCellReuseIdentifier: "headerDetailCell")
        tableViewSetting.register(bottomDetailCell, forCellReuseIdentifier: "bottomDetailCell")
        tableViewSetting.register(cardSettingCell, forCellReuseIdentifier: "cardSettingCell")
        tableViewSetting.register(cardDetailSettingCell, forCellReuseIdentifier: "cardDetailSettingCell")
        
        /* new cell */
        let settingMenuCell = UINib(nibName: "SettingMenuCell", bundle: Bundle.main)
        let cardSettingDetailCell = UINib(nibName: "CardSettingDetailCell", bundle: Bundle.main)
        let menuCardSettingdetailCell = UINib(nibName: "MenuCardSettingDetailCell", bundle: Bundle.main)
        let settingAboutCell = UINib(nibName: "SettingAboutCell", bundle: Bundle.main)
        
        tableViewSetting.register(settingMenuCell, forCellReuseIdentifier: "settingMenuCell")
        tableViewSetting.register(cardSettingDetailCell, forCellReuseIdentifier: "cardSettingDetailCell")
        tableViewSetting.register(menuCardSettingdetailCell, forCellReuseIdentifier: "menuCardSettingdetailCell")
        tableViewSetting.register(settingAboutCell, forCellReuseIdentifier: "settingAboutCell")
        
    }
    
    func setTypeSetting() {
        dataSetting = [SettingData(about: "What you can manage here", typeSetting: .aboutSettingCell),
                               SettingData(icon: "ic_headphone", textSetting: "Secretary's profile", typeSetting: .settingCell),
                               SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, subSettingMenu:["A", "B"],typeSetting: .cardDetailSettingCell),
                               SettingData(icon: "ic_headphone", textSetting: "Secretary's profile", typeSetting: .settingCell),
                               SettingData(imageHeader: "imgGreeting", previewDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", fullDetail: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", defaultDetail: false, subSettingMenu:["a", "b", "c","d"],typeSetting: .cardDetailSettingCell)
                ]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSetting.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let setting:SettingData = dataSetting[indexPath.row]
        
        if setting.typeSetting == .aboutSettingCell {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: AboutSettingCell.identifier, for: indexPath) as! AboutSettingCell
            cell.txAboutSetting.text = setting.about
            return cell
            
        } else if setting.typeSetting == .settingCell {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: SettingCell.identifier, for: indexPath) as! SettingCell
            cell.txSetting.text = setting.textSetting
            if let icon = setting.icon {
                cell.iconSetting.image = UIImage(named: icon)?.withRenderingMode(.alwaysTemplate)
            }
            cell.iconSetting.tintColor = .black
            return cell
            
        } else if setting.typeSetting == .cardDetailSettingCell {
            
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: CardDetailSettingCell.identifier, for: indexPath) as! CardDetailSettingCell
            cell.delegate = self
            if setting.defaultDetail == false {
                cell.txDetail.text = setting.previewDetail
            } else {
                cell.txDetail.text = setting.fullDetail
            }
            cell.prepareCell(subSetting: setting)
            cell.index = indexPath.row
            if let image = setting.imageHeader {
                cell.imgHeadDetail.image = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
            }
            return cell
            
        } else if setting.typeSetting == .bottomDetailCell {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: BottomDetailCell.identifier, for: indexPath) as! BottomDetailCell
            cell.txSubSetting.text = setting.subSetting
            return cell
            
            /* new version*/
            
        } else if setting.typeSetting == .settingMenuCell {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: SettingMenuCell.identifier, for: indexPath) as! SettingMenuCell
            cell.txSetting.text = setting.textSetting
            if let icon = setting.icon {
                cell.imgIconSetting.image = UIImage(named: icon)?.withRenderingMode(.alwaysTemplate)
            }
            cell.imgIconSetting.tintColor = .black
            return cell
        } else if setting.typeSetting == .cardSettingDetailCell {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: CardSettingDetailCell.identifier, for: indexPath) as!
                CardSettingDetailCell
            
            
            return cell
        } else if setting.typeSetting == .menuCardSettingDetailCell {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: MenuCardSettingDetailCell.identifier, for: indexPath) as! MenuCardSettingDetailCell
            cell.txMenuCard.text = setting.subSetting
            return cell
        } else {
            let cell = tableViewSetting.dequeueReusableCell(withIdentifier: SettingAboutCell.identifier, for: indexPath) as! SettingAboutCell
            cell.txSettingAbout.text = setting.about
            return cell
        }
    }
    
    func btnMoreDidTapped(index:Int) {
        
//        if dataSetting[index].defaultDetail == true {
//            dataSetting[index].defaultDetail = false
//        } else {
//            dataSetting[index].defaultDetail = true
//        } *-- 1. this way  simple check variable in array --*
        
//        if dataSetting[index].defaultDetail ?? false  {
//            dataSetting[index].defaultDetail = false
//        } else {
//            dataSetting[index].defaultDetail = true
//        } *-- 2. check with variable don't is type --*\
        
        clearIndex()
        dataSetting[index].defaultDetail = !(dataSetting[index].defaultDetail ?? false)
        tableViewSetting.reloadData() // way check with don't value this is value >> same on code is don't is false
    }
    
    func btnMoreDetailDidTapped(index:Int) {
        clearIndex()
        dataSetting[index].defaultDetail = !(dataSetting[index].defaultDetail ?? false)
        tableViewSetting.reloadData()
        tableViewSetting.layoutIfNeeded()
    }
    
    func clearIndex() { // func set fix clear value of index when press and use in btnMore
        for i in 0 ... (dataSetting.count - 1) {
            dataSetting[i].defaultDetail = false
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let setting = dataSetting[indexPath.row]
        switch setting.typeSetting {
        /* old version */

        case .aboutSettingCell:
            return 35
        case .settingCell:
            return 60
        case .headerDetailCell:
            return 160
        case .bottomDetailCell:
            return 40
        case .cardSettingCell:
            return UITableView.automaticDimension
        case .cardDetailSettingCell:
            return UITableView.automaticDimension
            
        /* new version */
        case .settingMenuCell:
            return UITableView.automaticDimension
        case .cardSettingDetailCell:
            return UITableView.automaticDimension
        case .menuCardSettingDetailCell:
            return UITableView.automaticDimension
        case .settingAboutCell:
            return UITableView.automaticDimension
        }
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

