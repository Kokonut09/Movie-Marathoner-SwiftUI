//
//  CatalogView.swift
//  Movie Marathoner v2
//
//  Created by Andrew Saeyang on 10/14/23.
//

import SwiftUI

struct CatalogView: View {
    @StateObject var viewModel = CatalogViewModel()
    
    let columns = [
           GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        VStack {
            
            Text("Catalog View")
            HStack(spacing: 20) {
                Button("Add Movie") {
                    viewModel.addMovie()
                }
                Button("Remove Movie") {
                    viewModel.removeMovie()
                }
            }
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(viewModel.movies) { movie in
                        Text(movie.name)
                            
                    }
                }
            }
        }
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView(viewModel:
                .init(movies: [
                    .init(id: "1", name: "Movie 1", duration: "72 min", rating: 8)
                ]
                )
        )
    }
}

