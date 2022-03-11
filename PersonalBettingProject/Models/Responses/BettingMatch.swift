//
//  BettingMatch.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import Foundation

struct BettingMatch: Codable {
    var homeTeam: String
    var bettingMatchId: String
    var bettingMatchCategory: String
    var awayTeam: String
    var bettingMatchDate: Int
    
    private enum CodingKeys: String, CodingKey {
        case homeTeam = "d"
        case bettingMatchId = "i"
        case bettingMatchCategory = "si"
        case awayTeam = "sh"
        case bettingMatchDate = "tt"
    }
}
