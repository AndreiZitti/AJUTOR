//
//  GetMovies.swift
//  RMApp (iOS)
//
//  Created by Zitti Andrei on 26.09.2021.
//

import Foundation
import Combine

class MovieService {
    
    private let movieAPI = MovieApi()
    
    func searchMovie(movieName: String) -> AnyPublisher<[MovieSearch], Error> {
        
        return movieAPI.searchMovie(movieName: movieName)
    
    }
}
