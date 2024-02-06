//
//  HomeViewModel.swift
//  Movie Marathoner v2
//
//  Created by Andrew Saeyang on 2/6/24.
//

import SwiftUI

extension HomeView {
    class ViewModel: ObservableObject {
        
        @Published var number: Int = 0
        @Published var hoursTextfield: String = ""
        
    }
}
