//
//  BasketballSectionExpandedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

class BasketballSectionExpandedTableViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier = "BasketballSectionExpandedTableViewCell"
    static let nibName = "BasketballSectionExpandedTableViewCell"
    
    var bettingMatches = [BettingMatch]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureBettingMatchesCollectionView()
    }
}
