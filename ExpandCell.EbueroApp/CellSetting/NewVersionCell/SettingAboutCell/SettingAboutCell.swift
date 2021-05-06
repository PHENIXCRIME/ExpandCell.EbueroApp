//
//  SettingAboutCell.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 5/5/2564 BE.
//

import UIKit

class SettingAboutCell: UITableViewCell {
    @IBOutlet weak var txSettingAbout: UILabel!

    static let identifier = "settingAboutCell"
    
    static func nib() ->UINib {
        return UINib(nibName: "SettingAboutCell", bundle: nil)
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
