//
//  NetworkManager.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit
import PromiseKit

class NetworkManager {
    static let shared = NetworkManager()
    
    func getBettingSports() -> Promise<[BettingSports]> {
        let urlRequest = try! createURLRequest()
        
        return firstly {
            URLSession.shared.dataTask(.promise, with: urlRequest)
        }.compactMap {
            return try JSONDecoder().decode([BettingSports].self, from: $0.data)
        }
    }
}
