//
//  WebService.swift
//  MVVM-Starter-Demo
//
//  Created by MacBook Pro on 28/04/2019.
//  Copyright © 2019 Muhammad Idris. All rights reserved.
//

import Foundation

class WebService {
    static let shared = WebService()
    
    func getAllMovies(completion: @escaping ([Movie]?, Error?) -> ()) {
        
        // TODO: Fetch From API
        
        let avengers = Movie.init(movieTitle: "The Avengers", ratings: 5.0, releaseDate: "04/26/2012".dateWithFormat(dateFormat: "MM/dd/yyyy"))
        
        let ageOfAltron = Movie.init(movieTitle: "Avengers: Age of Ultron", ratings: 4.0, releaseDate: "04/23/2015".dateWithFormat(dateFormat: "MM/dd/yyyy"))
        
        let infinityWar = Movie.init(movieTitle: "Avengers: Infinity War", ratings: 8.2, releaseDate: "04/26/2019".dateWithFormat(dateFormat: "MM/dd/yyyy"))
        
        let endGame = Movie.init(movieTitle: "Avengers - Endgame", ratings: 7.9, releaseDate: "04/26/2019".dateWithFormat(dateFormat: "MM/dd/yyyy"))
        
        completion([avengers, ageOfAltron, infinityWar, endGame], nil)
        
    }
    
    
}
