//
//  MoviesViewController.swift
//  MVVM-Starter-Demo
//
//  Created by MacBook Pro on 28/04/2019.
//  Copyright © 2019 Muhammad Idris. All rights reserved.
//

import UIKit

class MoviesViewController: UITableViewController {
    
    var movieViewModels = [MovieViewModel]()
    let cellIdentifier = "CellID"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Movies"
        // Register a Cell
        self.tableView.register(MovieCell.self, forCellReuseIdentifier: cellIdentifier)
        
        WebService.shared.getAllMovies { (moviesResult, error) in
            if let _ = error {
                // TODO: Show Error Message Alert
                return
            }
            
            guard let moviesResult = moviesResult else {return}
            self.movieViewModels = moviesResult.map({
                return MovieViewModel.init(movie: $0)
            })
            self.tableView.reloadData()
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieViewModels.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MovieCell
        
        cell.movieViewModel = movieViewModels[indexPath.row]

        return cell
    }
}
