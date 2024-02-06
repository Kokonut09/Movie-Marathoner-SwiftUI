//
//  Movie.swift
//  Movie Marathoner v2
//
//  Created by Andrew Saeyang on 10/14/23.
//

import Foundation
import SwiftUI
/**
An Object representing movies
 */
public struct Movie: Identifiable {
    public var id: String
    
    // MARK: - Properties
    
    let name: String
    let duration: String
    let synopsis: String = "Alfred, a skilled programmer from Los Angeles, finds himself caught in a web of crime and corruption. When his best friend and fellow programmer goes missing under suspicious circumstances, Alfred teams up with an unconventional detective, Detective Bartee. Despite their stark differences in personality and approach to solving crimes, the two form an unlikely partnership as they navigate the dangerous underworld of the city."

    let image = UIImage(named: "Interstellar_Poster")
    let rating: Int
    
    var ratingImage: String {
        if rating >= 10 {
            return "💯"
        } else if rating >= 9 {
            return "🌶"
        } else if rating >= 7 {
            return "😄"
        } else if rating >= 5 {
            return "😴"
        } else {
            return "🤮"
        }
    }
    
    
    // MARK: - Functions
    
}
