//
//  BackgroundGradient.swift
//  QuizGame
//
//  Created by Raul Palade on 01/03/23.
//

import SwiftUI

struct BackgroundGradient: View {
    var top: Color
    var bottom: Color

    var body: some View {
        LinearGradient(gradient:
            Gradient(colors: [top, bottom]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundGradient_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundGradient(top: .blue, bottom: .purple)
    }
}
