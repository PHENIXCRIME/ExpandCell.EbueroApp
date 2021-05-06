//
//  CardSettingDetailCell.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 5/5/2564 BE.
//

import UIKit

class CardSettingDetailCell: UITableViewCell {
    
    @IBOutlet weak var imgCard: UIImageView!
    @IBOutlet weak var txSettingDetail: UILabel!
    @IBOutlet weak var btnMoreDetail: UIButton!
    @IBOutlet weak var tableViewMenuCard: SettingTableView!
    @IBOutlet weak var heightTableView: NSLayoutConstraint!
    
    static let identifier = "cardSettingDetailCell"

    static func nib() ->UINib {
        return UINib(nibName: "CardSettingDetailCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
