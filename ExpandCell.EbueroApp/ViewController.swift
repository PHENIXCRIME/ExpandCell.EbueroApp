//
//  ViewController.swift
//  ExpandCell.EbueroApp
//
//  Created by PHENIXCRIME on 21/4/2564 BE.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewSetting: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareViews()
        registerCell()
        setTypeSetting()
        
        tableViewSetting.delegate = self
        tableViewSetting.dataSource = self
        
        tableViewSetting.separatorStyle = .none
        tableViewSetting.rowHeight = UITableView.automaticDimension
    }
    
    func prepareViews() {
        
    }
    
    func registerCell() {
        let settingCell = UINib(nibName: "settingCell", bundle: Bundle.main)
        let headerDetailCell = UINib(nibName: "headerDetailCell", bundle: Bundle.main)
        let bottomDetailCell = UINib(nibName: "bottomDetailCell", bundle: Bundle.main)
        
        tableViewSetting.register(settingCell, forCellReuseIdentifier: "settingCell")
        tableViewSetting.register(headerDetailCell, forCellReuseIdentifier: "headerDetailCell")
        tableViewSetting.register(bottomDetailCell, forCellReuseIdentifier: "bottomDetailCell")
        
    }
    
    func setTypeSetting() {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        <#code#>
    }
    
}

