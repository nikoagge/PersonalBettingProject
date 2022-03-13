//
//  BeachVolleyballSectionExpandedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 13/3/22.
//

import UIKit

class BeachVolleyballSectionExpandedTableViewCell: UITableViewCell {
    @IBOutlet weak var customTableViewCellsHeaderView: CustomTableViewCellsHeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier = "BeachVolleyballSectionExpandedTableViewCell"
    static let nibName = "BeachVolleyballSectionExpandedTableViewCell"
    
    var bettingMatches = [BettingMatch]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }

    private func setupUI() {
        customTableViewCellsHeaderView.bettingSportIconImageView.image = UIImage(named: ImageNames.beachVolleyball.rawValue)
        customTableViewCellsHeaderView.bettingSportDescriptionLabel.text = "BEACH VOLLEYBALL"
        customTableViewCellsHeaderView.arrowIconImageView.image = UIImage(named: ImageNames.upArrow.rawValue)
    }
}
