//
//  headerDetailCell.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 22/4/2564 BE.
//

import UIKit

class HeaderDetailCell: UITableViewCell {
    @IBOutlet weak var imageHeader: UIImageView!
    @IBOutlet weak var txDetailHeader: UILabel!
    
    static let identifier = "headerDetailCell"
    
    static func nib() ->UINib {
        return UINib(nibName: "headerDetailCell", bundle: nil)
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
