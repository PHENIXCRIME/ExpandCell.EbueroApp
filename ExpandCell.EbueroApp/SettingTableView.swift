//
//  SettingTableView.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 5/5/2564 BE.
//

import UIKit

class SettingTableView: UITableView {
    override var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return self.contentSize
    }
    
    override var contentSize: CGSize {
        didSet{
            self.invalidateIntrinsicContentSize()
        }
    }
}
