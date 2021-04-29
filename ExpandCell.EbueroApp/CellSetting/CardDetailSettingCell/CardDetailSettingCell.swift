//
//  CardDetailSettingCell.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 29/4/2564 BE.
//

import UIKit

protocol cardDetailSettingCellDelegate {
    func btnMoreDidTapped(index:Int)
}

class CardDetailSettingCell: UITableViewCell {
    @IBOutlet weak var imgHeadDetail: UIImageView!
    @IBOutlet weak var txDetail: UILabel!
    @IBOutlet weak var btnMore: UIButton!
    @IBOutlet weak var tableViewDetail: UITableView!
    
    var index: Int = 0
    
    var delegate: cardDetailSettingCellDelegate?
    
    static let identifier = "cardDetailSettingCell"
    
    static func nib() ->UINib {
        return UINib(nibName: "cardDetailSettingCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func btnMore(_ sender: Any) {
        delegate?.btnMoreDidTapped(index: index)
    }
    
    
}
