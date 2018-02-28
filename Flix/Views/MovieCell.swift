//
//  MovieCell.swift
//  Flix
//
//  Created by Sandra Flores on 2/4/18.
//  Copyright © 2018 Sandra Flores. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var movie: Movie!{
        didSet {
            titleLabel.text = movie.title
            overviewLabel.text = movie.overview
            
            let movieURL = URL( string : movie.posterUrl)
            posterImageView.af_setImage(withURL: movieURL!)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
