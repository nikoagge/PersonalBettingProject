//
//  TennisSectionExpandedTableViewCell+InternalExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 12/3/22.
//

import UIKit

internal extension TennisSectionExpandedTableViewCell {
    func configureBettingMatchesCollectionView() {
        let widthProposional = CGFloat(Int(UIScreen.main.bounds.size.width / 1.3))
        collectionView.heightAnchor.constraint(equalToConstant: 205).isActive = true
        let bettingSportSectionCollectionViewCellCollectionViewFlowLayout = UICollectionViewFlowLayout()
        bettingSportSectionCollectionViewCellCollectionViewFlowLayout.scrollDirection = .horizontal
        bettingSportSectionCollectionViewCellCollectionViewFlowLayout.minimumLineSpacing = 0
        bettingSportSectionCollectionViewCellCollectionViewFlowLayout.minimumInteritemSpacing = 0
        bettingSportSectionCollectionViewCellCollectionViewFlowLayout.itemSize = CGSize(width: widthProposional, height: 205)
        collectionView.collectionViewLayout = bettingSportSectionCollectionViewCellCollectionViewFlowLayout
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: BettingMatchCollectionViewCell.nibName, bundle: nil), forCellWithReuseIdentifier: BettingMatchCollectionViewCell.identifier)
    }}
