//
//  TennisSectionExpandedTableViewCell+UICollectionViewDataSource+UICollectionViewDelegate+UICollectionViewDelegateFlowLayout.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

extension TennisSectionExpandedTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bettingMatches.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let bettingMatchCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: BettingMatchCollectionViewCell.identifier, for: indexPath) as? BettingMatchCollectionViewCell {
            bettingMatchCollectionViewCell.homeTeamLabel.text = bettingMatches[indexPath.row].homeTeam
            bettingMatchCollectionViewCell.awayTeamLabel.text = bettingMatches[indexPath.row].awayTeam
            bettingMatchCollectionViewCell.timeAndDateLabel.text = getTime(from: bettingMatches[indexPath.row].bettingMatchDate)
            if bettingMatches[indexPath.row].isFavoriteMatch {
                if #available(iOS 13.0, *) {
                    bettingMatchCollectionViewCell.favoriteImageView.image = UIImage(systemName: "star.fill")
                } else {
                }
                bettingMatchCollectionViewCell.favoriteImageView.tintColor = .systemYellow
            } else {
                if #available(iOS 13.0, *) {
                    bettingMatchCollectionViewCell.favoriteImageView.image = UIImage(systemName: "star")
                } else {
                }
                bettingMatchCollectionViewCell.favoriteImageView.tintColor = .gray
            }
            
            return bettingMatchCollectionViewCell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        bettingMatches[indexPath.row].isFavoriteMatch = !bettingMatches[indexPath.row].isFavoriteMatch
        let _ = bettingMatches.sort { $0.isFavoriteMatch && !$1.isFavoriteMatch }
        collectionView.reloadData()
    }
}
