//
//  BadmintonSectionShrinkedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

class BadmintonSectionShrinkedTableViewCell: UITableViewCell {
    @IBOutlet weak var customTableViewCellsHeaderView: CustomTableViewCellsHeaderView!
    
    static let identifier = "BadmintonSectionShrinkedTableViewCell"
    static let nibName = "BadmintonSectionShrinkedTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }

    private func setupUI() {
        customTableViewCellsHeaderView.bettingSportIconImageView.image = UIImage(named: ImageNames.badminton.rawValue)
        customTableViewCellsHeaderView.bettingSportDescriptionLabel.text = "BADMINTON"
        customTableViewCellsHeaderView.arrowIconImageView.image = UIImage(named: ImageNames.downArrow.rawValue)
    }
}
