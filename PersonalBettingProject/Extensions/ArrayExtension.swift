//
//  ArrayExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import Foundation

extension Array where Element: Comparable {
    func containsSameElements(as otherArray: [Element]) -> Bool {
        return self.count == otherArray.count && self.sorted() == otherArray.sorted()
    }
}
