//
//  ContentView.swift
//  hw5-test
//
//  Created by Zahar Panteleev on 07.12.2023.
//

import SwiftUI

struct PlayerButton: View {
    
    private let name: String
    private let width: CGFloat
    private let height: CGFloat
    
    init(systemName: String, width: CGFloat = 30, height: CGFloat = 30) {
        name = systemName
        self.width = width
        self.height = height
    }
    
    var body: some View {
        Image(systemName: name)
            .resizable()
            .frame(width: width, height: height)
            .foregroundColor(.white)
    }
}

#Preview {
    PlayerButton(systemName: "cloud")
}
