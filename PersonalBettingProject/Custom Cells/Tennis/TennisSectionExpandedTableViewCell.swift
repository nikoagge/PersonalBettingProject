//
//  TennisSectionExpandedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

class TennisSectionExpandedTableViewCell: UITableViewCell {
    @IBOutlet weak var customTableViewCellsHeaderView: CustomTableViewCellsHeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier = "TennisSectionExpandedTableViewCell"
    static let nibName = "TennisSectionExpandedTableViewCell"
    
    var bettingMatches = [BettingMatch]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }

    private func setupUI() {
        customTableViewCellsHeaderView.bettingSportIconImageView.image = UIImage(named: ImageNames.tennis.rawValue)
        customTableViewCellsHeaderView.bettingSportDescriptionLabel.text = "TENNIS"
        customTableViewCellsHeaderView.arrowIconImageView.image = UIImage(named: ImageNames.upArrow.rawValue)
    }
}
