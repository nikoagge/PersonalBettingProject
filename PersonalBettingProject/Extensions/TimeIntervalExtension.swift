//
//  TimeIntervalExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 13/3/22.
//

import Foundation

extension TimeInterval {
    func stringFromTimeInterval() -> String {
        let time = NSInteger(self)
        let seconds = time % 60
        let minutes = (time / 60) % 60
        let hours = (time / 3600)

        return String(format: "%0.2d:%0.2d:%0.2d.%0.3d",hours,minutes,seconds)
    }
}
