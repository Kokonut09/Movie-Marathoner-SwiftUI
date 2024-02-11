//
//  HomeViewModel.swift
//  Movie Marathoner v2
//
//  Created by Andrew Saeyang on 2/6/24.
//

import SwiftUI

extension MovieMarathonView {
    class ViewModel: ObservableObject {
        @Published var number: Int = 0
        @Published var hoursTextfield: String = ""
        @Published var movieSearchTextField: String = ""
        @Published var hoursSelected: Bool = false
        @Published var movieSelected: Bool = false
        
        
        
    }
}
