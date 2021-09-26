//
//  MovieSearchViewModel.swift
//  RMApp (iOS)
//
//  Created by Zitti Andrei on 26.09.2021.
//

import Foundation
import Combine

class MovieSearchViewModedl {
    
    @Published var movies : [MovieSearch] = []
    
    private let movieServices = Services.shared.movieService
    
    func searchMovie(moviename: String){
        
        movieServices.searchMovie(movieName: moviename).sink { a in
            
        } receiveValue: { movies in
            self.movies = movies
        }

        
        
        }
        
    }
