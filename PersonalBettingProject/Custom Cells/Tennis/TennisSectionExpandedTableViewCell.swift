//
//  TennisSectionExpandedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

class TennisSectionExpandedTableViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier = "TennisSectionExpandedTableViewCell"
    static let nibName = "TennisSectionExpandedTableViewCell"
    
    var bettingMatches = [BettingMatch]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureBettingMatchesCollectionView()
    }
}
