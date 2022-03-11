//
//  DateFormatterExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import Foundation

extension DateFormatter {
    static func makeWithFormat(_ format: String, timeZone: TimeZone = .current) -> DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = timeZone
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        return dateFormatter
    }
}
