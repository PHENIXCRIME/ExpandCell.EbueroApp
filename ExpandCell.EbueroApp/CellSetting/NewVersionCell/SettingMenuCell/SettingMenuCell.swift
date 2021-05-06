//
//  SettingMenuCell.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 5/5/2564 BE.
//

import UIKit

class SettingMenuCell: UITableViewCell {
    @IBOutlet weak var viewSettingCell: UIView!
    @IBOutlet weak var imgIconSetting: UIImageView!
    @IBOutlet weak var txSetting: UILabel!
    @IBOutlet weak var btnExpanable: UIButton!
    
    static let identifier = "SettingMenuCell"
    
    static func nib() ->UINib {
        return UINib(nibName: "SettingMenuCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        viewSettingCell.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
