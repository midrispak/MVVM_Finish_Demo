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
        
        let avengers = Movie.init(movieTitle: "The Avengers", ratings: 5.0, releaseDateString: "04/26/2012")
        
        let ageOfAltron = Movie.init(movieTitle: "Avengers: Age of Ultron", ratings: 4.0, releaseDateString: "04/23/2015")
        
        let infinityWar = Movie.init(movieTitle: "Avengers: Infinity War", ratings: 8.2, releaseDateString: "04/26/2018")
        
        let endGame = Movie.init(movieTitle: "Avengers - Endgame", ratings: 7.9, releaseDateString: "04/26/2019")
        
        completion([avengers, ageOfAltron, infinityWar, endGame], nil)
        
    }
    
    
}
