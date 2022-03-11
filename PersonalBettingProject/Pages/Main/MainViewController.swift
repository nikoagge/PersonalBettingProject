//
//  MainViewController.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 10/3/22.
//

import UIKit

class MainViewController: GenericViewController {
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var bettingSportsTableView: UITableView!
    @IBOutlet weak var headerViewHeightLayoutConstraint: NSLayoutConstraint!
    var bettingSports = [BettingSport]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getData()
        setupUI()
    }
}
