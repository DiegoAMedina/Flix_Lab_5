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
    var overview: String
    var posterUrl: URL?
    var backDropUrl: URL?
    var releaseDate: String
    var id: String
    
    let baseURLString = "https://image.tmdb.org/t/p/w500"
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        overview = dictionary["overview"] as? String ?? "No Overview"
        posterUrl = URL(string: baseURLString + (dictionary["poster_path"] as! String))
        backDropUrl = URL(string: baseURLString + (dictionary["backdrop_path"] as! String))
        releaseDate = dictionary["release_date"] as? String ?? " No release Date"
        
        let idNum = dictionary["id"] as! Int
        id = "\(idNum)"
        
        
        
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


