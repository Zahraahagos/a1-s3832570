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
           .padding(5.0)
           .frame(maxWidth: .infinity)
           .foregroundColor(.white)
           .background(Color("Pink 2"))
           .cornerRadius(12)
           .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
   }
}

struct SecondaryButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(10.0)
            .frame(maxWidth: 250)
            .foregroundColor(Color("Pink 3"))
            .background(Color.white)
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("Pink 1"), lineWidth: 1)
            )
            .font(.custom("Jomhuria-Regular", size: 25.0))
   }
}
