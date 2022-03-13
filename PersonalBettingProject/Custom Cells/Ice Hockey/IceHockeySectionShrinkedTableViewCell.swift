//
//  IceHockeySectionShrinkedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

class IceHockeySectionShrinkedTableViewCell: UITableViewCell {
    @IBOutlet weak var customTableViewCellsHeaderView: CustomTableViewCellsHeaderView!
    
    static let identifier = "IceHockeySectionShrinkedTableViewCell"
    static let nibName = "IceHockeySectionShrinkedTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }

    private func setupUI() {
        customTableViewCellsHeaderView.bettingSportIconImageView.image = UIImage(named: ImageNames.iceHockey.rawValue)
        customTableViewCellsHeaderView.bettingSportDescriptionLabel.text = "ICE HOCKEY"
        customTableViewCellsHeaderView.arrowIconImageView.image = UIImage(named: ImageNames.downArrow.rawValue)
    }
}
