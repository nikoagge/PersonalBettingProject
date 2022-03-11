//
//  BettingSport.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import Foundation

struct BettingSport: Codable {
    var shortDescription: String
    var fullDescription: String
    var bettingMatches: [BettingMatch]
    
    private enum CodingKeys: String, CodingKey {
        case shortDescription = "i"
        case fullDescription = "d"
        case bettingMatches = "e"
    }
}
