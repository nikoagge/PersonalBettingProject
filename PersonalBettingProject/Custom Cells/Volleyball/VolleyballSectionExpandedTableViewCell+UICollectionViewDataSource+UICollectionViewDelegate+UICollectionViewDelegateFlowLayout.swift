//
//  VolleyballSectionExpandedTableViewCell+UICollectionViewDataSource+UICollectionViewDelegate+UICollectionViewDelegateFlowLayout.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

extension VolleyballSectionExpandedTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bettingMatches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let bettingMatchCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: BettingMatchCollectionViewCell.identifier, for: indexPath) as? BettingMatchCollectionViewCell {
            
            return bettingMatchCollectionViewCell
        }
        
        return UICollectionViewCell()
    }
}
