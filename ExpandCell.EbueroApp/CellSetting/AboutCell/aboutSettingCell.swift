//
//  aboutSettingCell.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 23/4/2564 BE.
//

import UIKit

class AboutSettingCell: UITableViewCell {
    @IBOutlet weak var txAboutSetting: UILabel!
    
    static let identifier = "aboutSettingCell"
    
    static func nib() ->UINib {
        return UINib(nibName: "aboutSettingCell", bundle: nil)
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
