//
//  MovieCard.swift
//  Movie Marathoner v2
//
//  Created by Andrew Saeyang on 10/14/23.
//

import Foundation
import SwiftUI

public struct MovieCard: View {
    let movie: Movie

    public var body: some View {
        HStack {
            VStack {
                Text(movie.name)
                    .frame(width: 150, height: 225)
                    .border(.red)
            }
            Spacer()
            VStack {
                Text(movie.name)
                    .font(.title2)
                Text(movie.duration)
                    .italic()
                
                Text(movie.synopsis)
                    .lineLimit(6)
            }
            
        }
    }
}

struct MovieCard_Previews: PreviewProvider {
    static var previews: some View {
        MovieCard(movie: MovieMockData.mockData1)
            .previewLayout(.sizeThatFits)
            
    }
}

extension MovieCard {
    public struct MovieCardViewModel {
        
    }
}
