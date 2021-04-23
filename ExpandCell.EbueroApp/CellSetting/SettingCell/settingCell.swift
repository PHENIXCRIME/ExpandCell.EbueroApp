//
//  settingCell.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 22/4/2564 BE.
//

import UIKit

class settingCell: UITableViewCell {
    @IBOutlet weak var iconSetting: UIImageView!
    @IBOutlet weak var txSetting: UILabel!
    
    static let identifier = "settingCell"
    
    static func nib() ->UINib {
        return UINib(nibName: "settingCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
