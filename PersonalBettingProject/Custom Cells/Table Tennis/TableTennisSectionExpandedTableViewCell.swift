//
//  TableTennisSectionExpandedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

class TableTennisSectionExpandedTableViewCell: UITableViewCell {
    @IBOutlet weak var customTableViewCellsHeaderView: CustomTableViewCellsHeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier = "TableTennisSectionExpandedTableViewCell"
    static let nibName = "TableTennisSectionExpandedTableViewCell"
    
    var bettingMatches = [BettingMatch]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }

    private func setupUI() {
        customTableViewCellsHeaderView.bettingSportIconImageView.image = UIImage(named: ImageNames.tableTennis.rawValue)
        customTableViewCellsHeaderView.bettingSportDescriptionLabel.text = "TABLE TENNIS"
        customTableViewCellsHeaderView.arrowIconImageView.image = UIImage(named: ImageNames.upArrow.rawValue)
    }
}
