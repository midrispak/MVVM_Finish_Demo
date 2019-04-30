//
//  MovieCell.swift
//  MVVM-Starter-Demo
//
//  Created by MacBook Pro on 28/04/2019.
//  Copyright © 2019 Muhammad Idris. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    var movieViewModel: MovieViewModel! {
        didSet {
            self.textLabel?.text = movieViewModel.movieTitle
            self.detailTextLabel?.text = movieViewModel.verdict
        }
        
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
