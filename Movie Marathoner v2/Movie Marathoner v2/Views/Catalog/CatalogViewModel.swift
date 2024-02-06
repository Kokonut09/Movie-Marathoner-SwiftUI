//
//  HomeViewModel.swift
//  Movie Marathoner v2
//
//  Created by Andrew Saeyang on 10/14/23.
//

import Foundation
import SwiftUI

extension CatalogView {
    @MainActor class CatalogViewModel: ObservableObject {
        @Published var movies: [Movie]
        
        public init(movies: [Movie] = []) {
            self.movies = movies
        }
                
        public func addMovie() {
            movies.append(.init(id: "\(movies.count)", name: "The Alfred \(movies.count == 0 ? "" : "\(movies.count)")", duration: "90 min", rating: Int.random(in: 1...10) ))
        }
        
        public func removeMovie() {
            movies.removeLast()
        }
    }
}
