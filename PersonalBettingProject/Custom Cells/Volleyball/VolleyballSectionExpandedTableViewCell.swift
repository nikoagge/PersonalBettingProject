//
//  VolleyballSectionExpandedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

class VolleyballSectionExpandedTableViewCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    
    static let identifier = "VolleyballSectionExpandedTableViewCell"
    static let nibName = "VolleyballSectionExpandedTableViewCell"
    
    var bettingMatches = [BettingMatch]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureBettingMatchesCollectionView()
    }
}
