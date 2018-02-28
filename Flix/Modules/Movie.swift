//
//  Movie.swift
//  Flix
//
//  Created by Sandra Flores on 2/26/18.
//  Copyright © 2018 Sandra Flores. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var posterUrl: String
    var overview: String
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary["overview"] as? String ?? "No Overview"
        posterUrl = dictionary["poster_path"] as? String ?? "No Poster Path"
        
        // Set the rest of the properties
    }
    
    //Functions
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }

}


