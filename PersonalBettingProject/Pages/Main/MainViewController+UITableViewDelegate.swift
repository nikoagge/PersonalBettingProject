//
//  MainViewController+UITableViewDelegate.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        bettingSportSectionIsExpanded[indexPath.section] = !bettingSportSectionIsExpanded[indexPath.section]
        bettingSportsTableView.reloadRows(at: [IndexPath(item: indexPath.row, section: indexPath.section)], with: .none)
    }
}
