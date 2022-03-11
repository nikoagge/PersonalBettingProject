//
//  PromiseExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import PromiseKit
import UIKit

extension Promise where T == Data {
    func decode<Model: Decodable>(_: Model.Type, decoder: JSONDecoder = JSONDecoder()) -> Promise<Model> {
        return map { data in
            return try decoder.decode(Model.self, from: data)
        }
    }
}

func retry<T>(maxAttempts: Int = 4, delay: DispatchTimeInterval = .seconds(1), _ body: @escaping() -> Promise<T>) -> Promise<T> {
    var attempts = 0
    func attempt() -> Promise<T> {
        attempts += 1
        return body()
            .recover { error -> Promise<T> in
                guard attempts < maxAttempts else {
                    throw error
                }
                
                return after(delay).then(attempt)
            }
    }
    
    return attempt()
}
