//
//  Movie.swift
//  MVVM-Starter-Demo
//
//  Created by MacBook Pro on 28/04/2019.
//  Copyright © 2019 Muhammad Idris. All rights reserved.
//

import Foundation
struct Movie : Decodable {
    
    let movieTitle: String
    let ratings: Float
    let releaseDate: Date
}
