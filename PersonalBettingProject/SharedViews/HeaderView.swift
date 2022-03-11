//
//  HeaderView.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

protocol HeaderViewDelegate where Self: GenericViewController {
    func profileButtonTouchUpInside()
    func settingsButtonTouchUpInside()
}

import UIKit

class HeaderView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var settingsButton: UIButton!
    
    var delegate: HeaderViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        initialize()
    }
    
    private func initialize() {
        Bundle.main.loadNibNamed(NibNames.headerView.rawValue, owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    @IBAction func profileButtonTouchUpInside(_ sender: UIButton) {
        delegate?.profileButtonTouchUpInside()
    }
    
    @IBAction func settingsButtonTouchUpInside(_ sender: UIButton) {
        delegate?.settingsButtonTouchUpInside()
    }
}
