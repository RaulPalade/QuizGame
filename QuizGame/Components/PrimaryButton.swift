//
//  Button.swift
//  QuizGame
//
//  Created by Raul Palade on 01/03/23.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background = Color("WhiteButton")

    var body: some View {
        Text(text)
            .font(.custom("Philosopher-Bold", size: 18))
            .foregroundColor(.blue)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(color: Color("ShadowColor"), radius: 5, x: 0, y: 5)
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Let's go!")
    }
}
