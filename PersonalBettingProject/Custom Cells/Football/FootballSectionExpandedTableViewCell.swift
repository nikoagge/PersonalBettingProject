//
//  FootballSectionExpandedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

class FootballSectionExpandedTableViewCell: UITableViewCell {
    @IBOutlet weak var customTableViewCellsHeaderView: CustomTableViewCellsHeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier = "FootballSectionExpandedTableViewCell"
    static let nibName = "FootballSectionExpandedTableViewCell"
    
    var bettingMatches = [BettingMatch]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }

    private func setupUI() {
        customTableViewCellsHeaderView.bettingSportIconImageView.image = UIImage(named: ImageNames.football.rawValue)
        customTableViewCellsHeaderView.bettingSportDescriptionLabel.text = "FOOTBALL"
        customTableViewCellsHeaderView.arrowIconImageView.image = UIImage(named: ImageNames.upArrow.rawValue)
    }
}
