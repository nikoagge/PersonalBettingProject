//
//  Constants+FormattersExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import Foundation

extension Constants {
    static let globalCurrencyFormatterForIntValue = NumberFormatter.makeCurrencyNumberFormatter(forIntValue: true)
    static let globalCurrencyFormatterForDoubleValue = NumberFormatter.makeCurrencyNumberFormatter(forIntValue: false)
    static let amountNumberFormatter = NumberFormatter.makeAmountNumberFormatter()
    static let groupingSeparator = NumberFormatter.groupingSeparator()
    static let dateFormatterServer = DateFormatter.makeWithFormat("yyyy-MM-dd HH:mm:ss", timeZone: TimeZone(identifier: "GMT") ?? .current)
    static let timeOnlyFormatterServer = DateFormatter.makeWithFormat("HH:mm", timeZone: TimeZone(identifier: "GMT") ?? .current)
    static let dateFormatterddMMyyyyHHmm = DateFormatter.makeWithFormat("dd-MM-yyyy HH:mm")
    static let dateFormatteryyyyMMdd = DateFormatter.makeWithFormat("yyyy-MM-dd")
    static let dateFormatterddMMyyyy = DateFormatter.makeWithFormat("dd-MM-yyyy")
    static let dateFormatteryyyyMMddWithSlashSeparation = DateFormatter.makeWithFormat("yyyy/MM/dd")
    static let dateFormatterddMMyyyyWithSlashSeparation = DateFormatter.makeWithFormat("dd/MM/yyyy")
    static let dateFormatterddMMyy = DateFormatter.makeWithFormat("dd/MM/yy")
    static let dateFormatterMMddyyyyHHmm = DateFormatter.makeWithFormat("dd/MM/yyyy HH:mm")
    static let onlyTimeDateFormatterHHmm = DateFormatter.makeWithFormat("HH:mm")
    static let currentDateFormatterHHmm = DateFormatter.makeWithFormat("HH:mm", timeZone: .current)
}
