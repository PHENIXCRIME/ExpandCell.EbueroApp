//
//  MenuCardSettingDetailCell.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 5/5/2564 BE.
//

import UIKit

class MenuCardSettingDetailCell: UITableViewCell {
    @IBOutlet weak var viewMenuCard: UIView!
    @IBOutlet weak var txMenuCard: UILabel!
    
    static let identifier = "menuCardSettingDetailCell"
    
    static func nib() ->UINib {
        return UINib(nibName: "MenuCardSettingDetailCell", bundle: nil)
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
