//
//  ProgressBar.swift
//  QuizGame
//
//  Created by Raul Palade on 02/03/23.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat

    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 3)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))

            Rectangle()
                .frame(width: progress, height: 4)
                .foregroundColor(.green)
                .cornerRadius(10)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 30)
    }
}