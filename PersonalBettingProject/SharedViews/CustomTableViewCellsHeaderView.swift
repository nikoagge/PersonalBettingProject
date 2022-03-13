//
//  CustomTableViewCellsHeaderView.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

class CustomTableViewCellsHeaderView: UIView {
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var bettingSportIconImageView: UIImageView!
    @IBOutlet weak var bettingSportDescriptionLabel: UILabel!
    @IBOutlet weak var arrowIconImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        initialize()
    }
    
    private func initialize() {
        Bundle.main.loadNibNamed(NibNames.customTableViewCellsHeaderView.rawValue, owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
}
