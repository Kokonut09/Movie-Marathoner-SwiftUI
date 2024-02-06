//
//  MovieMockData.swift
//  Movie Marathoner v2
//
//  Created by Andrew Saeyang on 10/14/23.
//

import Foundation

struct MovieMockData {
    static let mockData1: Movie = Movie(
        id: "100",
        name: "Star Obi",
        duration: "90 min",
        rating: 10
    )
    static let mockData2 = Movie(
        id: "101",
        name: "Addie's day off",
        duration: "2 min",
        rating: 10
    )
    static let mockData3 = Movie(
        id: "102",
        name: "Stromboli the Rev",
        duration: "300 min",
        rating: 10
    )
}
