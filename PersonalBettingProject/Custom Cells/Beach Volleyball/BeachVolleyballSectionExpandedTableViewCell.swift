//
//  BeachVolleyballSectionExpandedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 13/3/22.
//

import UIKit

class BeachVolleyballSectionExpandedTableViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier = "BeachVolleyballSectionExpandedTableViewCell"
    static let nibName = "BeachVolleyballSectionExpandedTableViewCell"
    
    var bettingMatches = [BettingMatch]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureBettingMatchesCollectionView()
    }
}
