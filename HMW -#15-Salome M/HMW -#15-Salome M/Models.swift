//
//  Models.swift
//  HMW -#15-Salome M
//
//  Created by Mcbook Pro on 12.07.22.
//

import Foundation

class Movie {
    
    static let movies =  [
        Movie(title: "Avatar", releaseDate: "18 Dec 2009", imdb: 7.9, mainActor: "Zoe Saldana", seen: false, isFavourite: true),
        Movie(title: "I Am Legend", releaseDate: "14 Dec 2007", imdb: 7.3, mainActor: "Will Smith", seen: false, isFavourite: true),
        Movie(title: "The Avengers", releaseDate: "04 May 2012", imdb: 8.1, mainActor: "Robert Downey Jr", seen: false, isFavourite: true),
        Movie(title:  "Interstellar", releaseDate: "07 Nov 2014", imdb: 9.0, mainActor: "Matthew McConaughey", seen: true, isFavourite: true),
        Movie(title: "Breaking Bad", releaseDate: "20 Jan 2008", imdb: 9.5, mainActor: "Bryan Cranston", seen: false, isFavourite: true),
        Movie(title: "Narcos", releaseDate: "28 Aug 2015", imdb: 8.9, mainActor: "8.9", seen: true, isFavourite: true),
        Movie(title: "Power", releaseDate: "14 Dec 2007", imdb: 5.9, mainActor: "Omari Hardwick", seen: false, isFavourite: true ),
        Movie(title: "Narcos", releaseDate:  "28 Aug 2015", imdb: 8.9, mainActor: "Carlo Bernard", seen: false, isFavourite: false),
        Movie(title:  "300", releaseDate: "09 Mar 2007", imdb: 7.7, mainActor: "Zack Snyder", seen: true, isFavourite: false),
        Movie(title:  "Game Of Thrones", releaseDate: "17 Apr 2011", imdb: 9.6, mainActor: "Peter Dinklage", seen: true, isFavourite: false),
        
    ]
    
    let title: String
    let releaseDate: String
    let imdb: Double
    let mainActor: String
    var seen: Bool?
    let isFavourite: Bool
    let description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"
    
    
    init(title: String,releaseDate: String,imdb: Double,mainActor: String, seen: Bool, isFavourite: Bool ){
        self.title = title
        self.releaseDate = releaseDate
        self.imdb = imdb
        self.mainActor = mainActor
        self.seen = seen
        self.isFavourite = isFavourite
    }
}
