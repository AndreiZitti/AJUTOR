//
//  BaseAPI.swift
//  RMApp (iOS)
//
//  Created by Zitti Andrei on 26.09.2021.
//

import Foundation
import Alamofire
import Combine
import SwiftyJSON

enum E: Error {
    case dataNull
}

class BaseAPI {
    private let baseURL = "https://api.themoviedb.org/3"
    
    func request<T>(method: HTTPMethod, endpoint: String, params: [String:Any]? = nil, completion: @escaping (JSON) -> T) -> Future<T, Error> {
        return Future<T, Error> { promise in
            var parameters: [String: Any] = ["api_key": "6c69b6a6f3045d9dc51c94f222b364b1"]
            if let params = params {
                for (key, value) in params {
                    parameters[key] = value
                }
            }
            AF.request(self.baseURL+endpoint, method: method, parameters: parameters, encoding: URLEncoding.default).response { response in
                if let error = response.error {
                    promise(.failure(error))
                } else if let data = response.data {
                    do {
                        let object = completion(try JSON(data: data))
                        promise(.success(object))
                    } catch let error {
                        promise(.failure(error))
                    }
                } else {
                    promise(.failure(E.dataNull))
                }
            }
        }
    }
}
