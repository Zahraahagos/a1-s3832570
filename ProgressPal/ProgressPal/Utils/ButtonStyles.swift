//
//  ButtonStyles.swift
//  ProgressPal
//
//  Created by Chloe Harvey on 10/8/2023.
//

import SwiftUI

struct MainButton: ButtonStyle {
   func makeBody(configuration: Configuration) -> some View {
       configuration.label
           .padding(.horizontal)
           .padding(.vertical, 5)
           .background(Color("Pink 2"))
           .foregroundStyle(.white)
           .clipShape(RoundedRectangle(cornerRadius: 15.0))
           .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
   }
}
