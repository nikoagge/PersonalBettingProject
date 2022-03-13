//
//  VolleyballSectionShrinkedTableViewCell.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

class VolleyballSectionShrinkedTableViewCell: UITableViewCell {
    @IBOutlet weak var customTableViewCellsHeaderView: CustomTableViewCellsHeaderView!
    
    static let identifier = "VolleyballSectionShrinkedTableViewCell"
    static let nibName = "VolleyballSectionShrinkedTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupUI()
    }

    private func setupUI() {
        customTableViewCellsHeaderView.bettingSportIconImageView.image = UIImage(named: ImageNames.volleyball.rawValue)
        customTableViewCellsHeaderView.bettingSportDescriptionLabel.text = "VOLLEYBALL"
        customTableViewCellsHeaderView.arrowIconImageView.image = UIImage(named: ImageNames.downArrow.rawValue)
    }
}
