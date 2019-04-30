//
//  MovieViewModel.swift
//  MVVM_Finish_Demo
//
//  Created by MacBook Pro on 28/04/2019.
//  Copyright © 2019 Muhammad Idris. All rights reserved.
//

import Foundation

struct MovieViewModel {
    
    var movieTitle: String
    var isFlop: Bool
    var verdict: String
    
    init(movie: Movie) {
        self.movieTitle = movie.movieTitle
        isFlop = movie.ratings < 6
        verdict = isFlop ? "It's Flop" : "It's Hit"
    }
}
