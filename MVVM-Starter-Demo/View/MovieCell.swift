//
//  MovieCell.swift
//  MVVM-Starter-Demo
//
//  Created by MacBook Pro on 28/04/2019.
//  Copyright © 2019 Muhammad Idris. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    var movie: Movie! {
        didSet {
            self.textLabel?.text = movie.movieTitle
            if movie.ratings < 6.0 {
                self.detailTextLabel?.text = "It's FLOP"
            }
            else {
                self.detailTextLabel?.text = "It's HIT"
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
