//
//  ViewController.swift
//  Testing
//
//  Created by C4Q on 4/24/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var movies = [Movie]() {
        didSet {
            self.tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self 
        MovieAPIClient.manager.getMovies(completionHandler: { (onlineMovies) in
            self.movies = onlineMovies
        }, errorHandler: {print($0)})
    }


}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as! MovieCell
        let movie = movies[indexPath.row]
        cell.configureCell(with: movie)
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
}

