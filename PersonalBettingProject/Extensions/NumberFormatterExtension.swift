//
//  NumberFormatterExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import Foundation

extension NumberFormatter {
    class func makeCurrencyNumberFormatter(forIntValue: Bool) -> NumberFormatter {
        let currencyNumberFormatter = NumberFormatter()
        currencyNumberFormatter.usesGroupingSeparator = true
        currencyNumberFormatter.numberStyle = .currency
        currencyNumberFormatter.minimumFractionDigits = forIntValue ? 0 : 2
        currencyNumberFormatter.maximumFractionDigits = 2
        currencyNumberFormatter.currencySymbol = ""
        currencyNumberFormatter.locale = Locale(identifier: Locale.autoupdatingCurrent.identifier)
        
        return currencyNumberFormatter
    }
    
    class func makeAmountNumberFormatter() -> NumberFormatter {
        let amountNumberFormatter = NumberFormatter()
        amountNumberFormatter.minimumFractionDigits = 0
        amountNumberFormatter.maximumFractionDigits = 2
        amountNumberFormatter.roundingMode = .halfUp
        amountNumberFormatter.numberStyle = .decimal
        amountNumberFormatter.locale = Locale(identifier: Locale.autoupdatingCurrent.identifier)
        
        return amountNumberFormatter
    }
    
    class func groupingSeparator() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.locale = Locale(identifier: Locale.autoupdatingCurrent.identifier)
        numberFormatter.groupingSeparator = Locale.autoupdatingCurrent.groupingSeparator
        
        return numberFormatter.groupingSeparator
    }
}
