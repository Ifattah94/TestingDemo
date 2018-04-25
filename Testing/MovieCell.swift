//
//  MovieCell.swift
//  Testing
//
//  Created by C4Q on 4/25/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    func configureCell(with movie: Movie) {
        self.label.text = movie.trackName
        ImageAPIClient.manager.getImage(from: movie.artworkUrl100, completionHandler: { (onlineImage) in
            //self.movieImage.image = nil
            self.movieImage.image = onlineImage
            self.movieImage.setNeedsLayout()
        }, errorHandler: {print($0)})
    }
    
}
