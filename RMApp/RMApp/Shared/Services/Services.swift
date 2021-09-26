//
//  Services.swift
//  RMApp (iOS)
//
//  Created by Zitti Andrei on 26.09.2021.
//

import Foundation
import Combine

class Services {
    
   // private var cancellables = Set<AnyCancellable>()
    
    static let shared = Services()
    
    let movieService = MovieService()

}
