//
//  TennisSectionShrinkedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

class TennisSectionShrinkedTableViewCell: UITableViewCell {
    @IBOutlet weak var customTableViewCellsHeaderView: CustomTableViewCellsHeaderView!
    
    static let identifier = "TennisSectionShrinkedTableViewCell"
    static let nibName = "TennisSectionShrinkedTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }

    private func setupUI() {
        customTableViewCellsHeaderView.bettingSportIconImageView.image = UIImage(named: ImageNames.tennis.rawValue)
        customTableViewCellsHeaderView.bettingSportDescriptionLabel.text = "TENNIS"
        customTableViewCellsHeaderView.arrowIconImageView.image = UIImage(named: ImageNames.downArrow.rawValue)
    }
}
