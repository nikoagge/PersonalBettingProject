//
//  NetworkManager+InternalExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import Foundation
import PromiseKit

internal extension NetworkManager {
    func createURLRequest(_ httpMethod: HTTPMethod = .get) throws -> URLRequest {
        var urlComponents = URLComponents()
        urlComponents.scheme = Constants.urlComponentsScheme
        urlComponents.host = Constants.urlComponentsHost
        urlComponents.path = Constants.urlComponentsPath
        
        guard let url = urlComponents.url else {
            assert(false, ServiceErrors.urlIsNotCreated.rawValue)
            throw NetworkManagerError.cannotCreateURL
        }
        
        var urlRequest = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: Constants.networkTimeout)
        urlRequest.httpMethod = httpMethod.rawValue
        
        return urlRequest
    }
}
