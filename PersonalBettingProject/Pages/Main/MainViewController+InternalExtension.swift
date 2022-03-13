//
//  MainViewController+InternalExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

internal extension MainViewController {
    func getData() {
        _ = NetworkManager.shared.getBettingSports().done { bettingSports in
            self.bettingSports = bettingSports
            for _ in 0..<bettingSports.count {
                self.bettingSportSectionIsExpanded.append(false)
                self.bettingSportsTableView.reloadData()
            }
        }.catch { error in
            debugPrint(error.localizedDescription)
        }
    }
    
    func setupUI() {
        if !UIDevice().isIPodOrIPhoneWithoutNotch() {
            headerViewHeightLayoutConstraint.constant = 130
        }
        
        bettingSportsTableViewConfiguration()
        headerView.delegate = self
    }
    
    func bettingSportsTableViewConfiguration() {
        bettingSportsTableView.register(UINib(nibName: FootballSectionShrinkedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: FootballSectionShrinkedTableViewCell.identifier)
        bettingSportsTableView.register(UINib(nibName: FootballSectionExpandedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: FootballSectionExpandedTableViewCell.identifier)
        
        bettingSportsTableView.register(UINib(nibName: BasketballSectionShrinkedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: BasketballSectionShrinkedTableViewCell.identifier)
        bettingSportsTableView.register(UINib(nibName: BasketballSectionExpandedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: BasketballSectionExpandedTableViewCell.identifier)
        
        bettingSportsTableView.register(UINib(nibName: TennisSectionShrinkedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: TennisSectionShrinkedTableViewCell.identifier)
        bettingSportsTableView.register(UINib(nibName: TennisSectionExpandedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: TennisSectionExpandedTableViewCell.identifier)
        
        bettingSportsTableView.register(UINib(nibName: TableTennisSectionShrinkedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: TableTennisSectionShrinkedTableViewCell.identifier)
        bettingSportsTableView.register(UINib(nibName: TableTennisSectionExpandedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: TableTennisSectionExpandedTableViewCell.identifier)
        
        bettingSportsTableView.register(UINib(nibName: VolleyballSectionShrinkedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: VolleyballSectionShrinkedTableViewCell.identifier)
        bettingSportsTableView.register(UINib(nibName: VolleyballSectionExpandedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: VolleyballSectionExpandedTableViewCell.identifier)
        
        bettingSportsTableView.register(UINib(nibName: EsportsSectionShrinkedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: EsportsSectionShrinkedTableViewCell.identifier)
        bettingSportsTableView.register(UINib(nibName: EsportsSectionExpandedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: EsportsSectionExpandedTableViewCell.identifier)
        
        bettingSportsTableView.register(UINib(nibName: IceHockeySectionShrinkedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: IceHockeySectionShrinkedTableViewCell.identifier)
        bettingSportsTableView.register(UINib(nibName: IceHockeySectionExpandedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: IceHockeySectionExpandedTableViewCell.identifier)
        
        bettingSportsTableView.register(UINib(nibName: BeachVolleyballSectionShrinkedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: BeachVolleyballSectionShrinkedTableViewCell.identifier)
        bettingSportsTableView.register(UINib(nibName: BeachVolleyballSectionExpandedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: BeachVolleyballSectionExpandedTableViewCell.identifier)
        
        bettingSportsTableView.register(UINib(nibName: BadmintonSectionShrinkedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: BadmintonSectionShrinkedTableViewCell.identifier)
        bettingSportsTableView.register(UINib(nibName: BadmintonSectionExpandedTableViewCell.nibName, bundle: nil), forCellReuseIdentifier: BadmintonSectionExpandedTableViewCell.identifier)
        
        bettingSportsTableView.rowHeight = UITableView.automaticDimension
    }
}
