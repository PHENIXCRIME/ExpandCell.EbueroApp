//
//  CardSettingDetailCell.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 5/5/2564 BE.
//

import UIKit

protocol cardSettingDetailCellDelegate {
    func btnDetailMoreDidTapped(index:Int)
}

class CardSettingDetailCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var imgCard: UIImageView!
    @IBOutlet weak var txSettingDetail: UILabel!
    @IBOutlet weak var btnMoreDetail: UIButton!
    @IBOutlet weak var tableViewMenuCard: SettingTableView!
    
    @IBOutlet weak var heightTableView: NSLayoutConstraint!
    
    static let identifier = "cardSettingDetailCell"
    
    static func nib() ->UINib {
        return UINib(nibName: "CardSettingDetailCell", bundle: nil)
    }
    
    public var subSettingData: SettingData?
    
    var delegate: cardSettingDetailCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
        registerCell()
        tableViewMenuCard.rowHeight = UITableView.automaticDimension
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupView() {
        tableViewMenuCard.delegate = self
        tableViewMenuCard.dataSource = self
        tableViewMenuCard.separatorStyle = .none
        tableViewMenuCard.rowHeight = UITableView.automaticDimension
    }
    
    func registerCell() {
        let menuCardSettingDetailCell = UINib(nibName: "MenuCardSettingDetailCell", bundle: Bundle.main)
        tableViewMenuCard.register(menuCardSettingDetailCell, forCellReuseIdentifier: "menuCardSettingDetailCell")
    }
    
    func prepareCell(subSetting:SettingData) {
        subSettingData = subSetting
        adjustTableView()
    }
    
    func adjustTableView() {
        let totalCell:Int = subSettingData?.subSettingMenu?.count ?? 0
        let heightMenuCardSetting:Int = 60
        let heightTableViewMenuCard = totalCell * heightMenuCardSetting
        DispatchQueue.main.async {
            self.tableViewMenuCard.reloadData()
            self.heightTableView.constant = CGFloat(heightTableViewMenuCard)
            self.layoutIfNeeded()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subSettingData?.subSettingMenu?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let subMenuCardSetting = subSettingData?.subSettingMenu?[indexPath.row]
        let cell = tableViewMenuCard.dequeueReusableCell(withIdentifier: MenuCardSettingDetailCell.identifier, for: indexPath) as! MenuCardSettingDetailCell
        cell.txMenuCard.text = subMenuCardSetting
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}
