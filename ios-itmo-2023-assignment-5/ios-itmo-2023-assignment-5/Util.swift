//
//  Util.swift
//  hw5-test
//
//  Created by Zahar Panteleev on 14.12.2023.
//

import Foundation
import SwiftUI

class Util {
    static func button(text: String, textColor: Color, backColor: Color) -> some View {
        Button(text) {}
            .frame(width: 350, height: 50)
            .foregroundStyle(textColor)
            .bold()
            .font(.title3)
            .background(backColor)
            .clipShape(.rect(cornerRadius: 15))
    }
}
