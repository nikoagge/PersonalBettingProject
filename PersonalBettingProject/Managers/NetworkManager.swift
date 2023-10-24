//
//  NetworkManager.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

class NetworkManager {
    static let shared = NetworkManager()
    
    private let scheme = "https"
    private let host = "618d3aa7fe09aa001744060a.mockapi.io"
    private let path = "/api/sports"
    
    private var url: URL? {
        var urlComponents = URLComponents()
        urlComponents.scheme = scheme
        urlComponents.host = host
        urlComponents.path = path
        
        return urlComponents.url
    }
    
    private init() {}
    
    func fetchSportEvents(onCompletion: @escaping (Result<[BettingSport], SportsAPIError>) -> Void) {
        guard let url = url else {
            onCompletion(.failure(.invalidURLComponents))
            
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                onCompletion(.failure(.requestFailed))
                
                return
            }
            
            guard let data = data else {
                onCompletion(.failure(.invalidResponse))
                
                return
            }
            
            do {
                let sports = try JSONDecoder().decode([BettingSport].self, from: data)
                onCompletion(.success(sports))
            } catch {
                onCompletion(.failure(.decodingError))
            }
        }.resume()
    }
}
