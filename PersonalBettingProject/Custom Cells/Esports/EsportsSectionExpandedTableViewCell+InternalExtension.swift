//
//  EsportsSectionExpandedTableViewCell+InternalExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

internal extension EsportsSectionExpandedTableViewCell {
    func configureBettingMatchesCollectionView() {
        collectionView.isPagingEnabled = true
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: BettingMatchCollectionViewCell.nibName, bundle: nil), forCellWithReuseIdentifier: BettingMatchCollectionViewCell.identifier)
    }
}
