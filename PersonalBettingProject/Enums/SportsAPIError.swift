//
//  SportsAPIError.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import Foundation

enum SportsAPIError: Error {
    case decodingError
    case invalidResponse
    case invalidURLComponents
    case requestFailed
}
