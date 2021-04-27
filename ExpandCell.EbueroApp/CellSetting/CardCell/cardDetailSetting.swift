//
//  cardDetailSetting.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 26/4/2564 BE.
//

import UIKit

class cardDetailSetting: UITableViewCell {
    @IBOutlet weak var imgHeader: UIImageView!
    @IBOutlet weak var txDetailHeader: UILabel!
        
    static let identifier = "cardDetailSetting"
    
    static func nib() ->UINib {
        return UINib(nibName: "cardDetailSetting", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
