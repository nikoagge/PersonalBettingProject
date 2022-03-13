//
//  BeachVolleyballSectionExpandedTableViewCell+UICollectionViewDataSource+UICollectionViewDelegate+UICollectionViewDelegateFlowLayout.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 13/3/22.
//

import UIKit

extension BeachVolleyballSectionExpandedTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bettingMatches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let bettingMatchCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: BettingMatchCollectionViewCell.identifier, for: indexPath) as? BettingMatchCollectionViewCell {
            bettingMatchCollectionViewCell.homeTeamLabel.text = bettingMatches[indexPath.row].homeTeam
            bettingMatchCollectionViewCell.awayTeamLabel.text = bettingMatches[indexPath.row].awayTeam
            bettingMatchCollectionViewCell.timeAndDateLabel.text = getTime(from: bettingMatches[indexPath.row].bettingMatchDate)
            
            return bettingMatchCollectionViewCell
        }
        
        return UICollectionViewCell()
    }
}
