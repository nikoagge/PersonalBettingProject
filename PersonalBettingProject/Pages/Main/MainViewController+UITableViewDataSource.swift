//
//  MainViewController+UITableViewDataSource.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

extension MainViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return bettingSports.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            if !bettingSportSectionIsExpanded[indexPath.section] {
                if let footballSectionShrinkedTableViewCell = tableView.dequeueReusableCell(withIdentifier: FootballSectionShrinkedTableViewCell.identifier, for: indexPath) as? FootballSectionShrinkedTableViewCell {
                    return footballSectionShrinkedTableViewCell
                }
            } else {
                if let footballSectionExpandedTableViewCell = tableView.dequeueReusableCell(withIdentifier: FootballSectionExpandedTableViewCell.identifier, for: indexPath) as? FootballSectionExpandedTableViewCell {
                    footballSectionExpandedTableViewCell.bettingMatches = bettingSports[indexPath.section].bettingMatches
                    footballSectionExpandedTableViewCell.collectionView.reloadData()
                    
                    return footballSectionExpandedTableViewCell
                }
            }
            
        case 1:
            if !bettingSportSectionIsExpanded[indexPath.section] {
                if let basketballSectionShrinkedTableViewCell = tableView.dequeueReusableCell(withIdentifier: BasketballSectionShrinkedTableViewCell.identifier, for: indexPath) as? BasketballSectionShrinkedTableViewCell {
                    return basketballSectionShrinkedTableViewCell
                }
            } else {
                if let basketballSectionExpandedTableViewCell = tableView.dequeueReusableCell(withIdentifier: BasketballSectionExpandedTableViewCell.identifier, for: indexPath) as? BasketballSectionExpandedTableViewCell {
                    basketballSectionExpandedTableViewCell.bettingMatches = bettingSports[indexPath.section].bettingMatches
                    basketballSectionExpandedTableViewCell.collectionView.reloadData()
                    
                    return basketballSectionExpandedTableViewCell
                }
            }
            
        case 2:
            if !bettingSportSectionIsExpanded[indexPath.section] {
                if let tennisSectionShrinkedTableViewCell = tableView.dequeueReusableCell(withIdentifier: TennisSectionShrinkedTableViewCell.identifier, for: indexPath) as? TennisSectionShrinkedTableViewCell {
                    return tennisSectionShrinkedTableViewCell
                }
            } else {
                if let tennisSectionExpandedTableViewCell = tableView.dequeueReusableCell(withIdentifier: TennisSectionExpandedTableViewCell.identifier, for: indexPath) as? TennisSectionExpandedTableViewCell {
                    tennisSectionExpandedTableViewCell.bettingMatches = bettingSports[indexPath.section].bettingMatches
                    tennisSectionExpandedTableViewCell.collectionView.reloadData()
                    
                    return tennisSectionExpandedTableViewCell
                }
            }
            
        case 3:
            if !bettingSportSectionIsExpanded[indexPath.section] {
                if let tableTennisSectionShrinkedTableViewCell = tableView.dequeueReusableCell(withIdentifier: TableTennisSectionShrinkedTableViewCell.identifier, for: indexPath) as? TableTennisSectionShrinkedTableViewCell {
                    return tableTennisSectionShrinkedTableViewCell
                }
            } else {
                if let tableTennisSectionExpandedTableViewCell = tableView.dequeueReusableCell(withIdentifier: TableTennisSectionExpandedTableViewCell.identifier, for: indexPath) as? TableTennisSectionExpandedTableViewCell {
                    tableTennisSectionExpandedTableViewCell.bettingMatches = bettingSports[indexPath.section].bettingMatches
                    tableTennisSectionExpandedTableViewCell.collectionView.reloadData()
                    
                    return tableTennisSectionExpandedTableViewCell
                }
            }
            
        case 4:
            if !bettingSportSectionIsExpanded[indexPath.section] {
                if let volleyballSectionShrinkedTableViewCell = tableView.dequeueReusableCell(withIdentifier: VolleyballSectionShrinkedTableViewCell.identifier, for: indexPath) as? VolleyballSectionShrinkedTableViewCell {
                    return volleyballSectionShrinkedTableViewCell
                }
            } else {
                if let volleyballSectionExpandedTableViewCell = tableView.dequeueReusableCell(withIdentifier: VolleyballSectionExpandedTableViewCell.identifier, for: indexPath) as? VolleyballSectionExpandedTableViewCell {
                    volleyballSectionExpandedTableViewCell.bettingMatches = bettingSports[indexPath.section].bettingMatches
                    volleyballSectionExpandedTableViewCell.collectionView.reloadData()
                    
                    return volleyballSectionExpandedTableViewCell
                }
            }
            
        case 5:
            if !bettingSportSectionIsExpanded[indexPath.section] {
                if let esportsSectionShrinkedTableViewCell = tableView.dequeueReusableCell(withIdentifier: EsportsSectionShrinkedTableViewCell.identifier, for: indexPath) as? EsportsSectionShrinkedTableViewCell {
                    return esportsSectionShrinkedTableViewCell
                }
            } else {
                if let esportsSectionExpandedTableViewCell = tableView.dequeueReusableCell(withIdentifier: EsportsSectionExpandedTableViewCell.identifier, for: indexPath) as? EsportsSectionExpandedTableViewCell {
                    esportsSectionExpandedTableViewCell.bettingMatches = bettingSports[indexPath.section].bettingMatches
                    esportsSectionExpandedTableViewCell.collectionView.reloadData()
                    
                    return esportsSectionExpandedTableViewCell
                }
            }
            
        case 6:
            if !bettingSportSectionIsExpanded[indexPath.section] {
                if let iceHockeySectionShrinkedTableViewCell = tableView.dequeueReusableCell(withIdentifier: IceHockeySectionShrinkedTableViewCell.identifier, for: indexPath) as? IceHockeySectionShrinkedTableViewCell {
                    return iceHockeySectionShrinkedTableViewCell
                }
            } else {
                if let iceHockeySectionExpandedTableViewCell = tableView.dequeueReusableCell(withIdentifier: IceHockeySectionExpandedTableViewCell.identifier, for: indexPath) as? IceHockeySectionExpandedTableViewCell {
                    iceHockeySectionExpandedTableViewCell.bettingMatches = bettingSports[indexPath.section].bettingMatches
                    iceHockeySectionExpandedTableViewCell.collectionView.reloadData()
                    
                    return iceHockeySectionExpandedTableViewCell
                }
            }
            
        case 7:
            if !bettingSportSectionIsExpanded[indexPath.section] {
                if let beachVolleyballSectionShrinkedTableViewCell = tableView.dequeueReusableCell(withIdentifier: BeachVolleyballSectionShrinkedTableViewCell.identifier, for: indexPath) as? BeachVolleyballSectionShrinkedTableViewCell {
                    return beachVolleyballSectionShrinkedTableViewCell
                }
            } else {
                if let beachVolleyballSectionExpandedTableViewCell = tableView.dequeueReusableCell(withIdentifier: BeachVolleyballSectionExpandedTableViewCell.identifier, for: indexPath) as? BeachVolleyballSectionExpandedTableViewCell {
                    beachVolleyballSectionExpandedTableViewCell.bettingMatches = bettingSports[indexPath.section].bettingMatches
                    beachVolleyballSectionExpandedTableViewCell.collectionView.reloadData()
                    
                    return beachVolleyballSectionExpandedTableViewCell
                }
            }
            
        case 8:
            if !bettingSportSectionIsExpanded[indexPath.section] {
                if let badmintonSectionShrinkedTableViewCell = tableView.dequeueReusableCell(withIdentifier: BadmintonSectionShrinkedTableViewCell.identifier, for: indexPath) as? BadmintonSectionShrinkedTableViewCell {
                    return badmintonSectionShrinkedTableViewCell
                }
            } else {
                if let badmintonSectionExpandedTableViewCell = tableView.dequeueReusableCell(withIdentifier: BadmintonSectionExpandedTableViewCell.identifier, for: indexPath) as? BadmintonSectionExpandedTableViewCell {
                    badmintonSectionExpandedTableViewCell.bettingMatches = bettingSports[indexPath.section].bettingMatches
                    badmintonSectionExpandedTableViewCell.collectionView.reloadData()
                    
                    return badmintonSectionExpandedTableViewCell
                }
            }
            
        default:
            break
        }
        
        return UITableViewCell()
    }
}
