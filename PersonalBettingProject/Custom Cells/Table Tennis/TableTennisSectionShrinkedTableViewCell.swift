//
//  TableTennisSectionShrinkedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

class TableTennisSectionShrinkedTableViewCell: UITableViewCell {
    @IBOutlet weak var customTableViewCellsHeaderView: CustomTableViewCellsHeaderView!
    
    static let identifier = "TableTennisSectionShrinkedTableViewCell"
    static let nibName = "TableTennisSectionShrinkedTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }

    private func setupUI() {
        customTableViewCellsHeaderView.bettingSportIconImageView.image = UIImage(named: ImageNames.tableTennis.rawValue)
        customTableViewCellsHeaderView.bettingSportDescriptionLabel.text = "TABLE TENNIS"
        customTableViewCellsHeaderView.arrowIconImageView.image = UIImage(named: ImageNames.downArrow.rawValue)
    }
}
