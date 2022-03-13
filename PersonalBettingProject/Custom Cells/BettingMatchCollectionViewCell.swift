//
//  BettingMatchCollectionViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

class BettingMatchCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var timeAndDateView: UIView!
    @IBOutlet weak var timeAndDateLabel: UILabel!
    @IBOutlet weak var favoriteImageView: UIImageView!
    @IBOutlet weak var homeTeamLabel: UILabel!
    @IBOutlet weak var awayTeamLabel: UILabel!
    
    static let identifier = "BettingMatchCollectionViewCell"
    static let nibName = "BettingMatchCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
