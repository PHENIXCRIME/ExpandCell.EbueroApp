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

class CardDetailSettingCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var imgHeadDetail: UIImageView!
    @IBOutlet weak var txDetail: UILabel!
    @IBOutlet weak var btnMore: UIButton!
    @IBOutlet weak var tableViewDetail: UITableView!
    
    public var dataSetting: [SettingData] = []
    
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
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        registerCell()
        tableViewDetail.reloadData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func btnMore(_ sender: Any) {
        delegate?.btnMoreDidTapped(index: index)
    }
    
    func setupView() {
        tableViewDetail.delegate = self
        tableViewDetail.dataSource = self
        tableViewDetail.separatorStyle = .none
        tableViewDetail.rowHeight = UITableView.automaticDimension
    }
    
    func registerCell() {
        let bottomDetailCell = UINib(nibName: "BottomDetailCell", bundle: Bundle.main)
        tableViewDetail.register(bottomDetailCell, forCellReuseIdentifier: "bottomDetailCell")
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

}
