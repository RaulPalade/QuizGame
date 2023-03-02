//
//  PrimaryCard.swift
//  QuizGame
//
//  Created by Raul Palade on 01/03/23.
//

import SwiftUI

struct PrimaryCard: View {
    var gameCategory: GameCategory

    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(LinearGradient(gradient: Gradient(colors: [.pink, .yellow]), startPoint: .leading, endPoint: .trailing))
            .frame(width: 350, height: 200)
            .shadow(color: .gray, radius: 10, x: 0, y: 5)
            .overlay(
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Image(systemName: "play.square").resizable().scaledToFit().foregroundColor(.white).fontWeight(.ultraLight).frame(width: 40)
                        Spacer()
                        VStack(alignment: .leading, spacing: 8) {
                            Text(gameCategory.type)
                                .font(.custom("Philosopher-Regular", size: 20))
                                .foregroundColor(.white)

                            Text(gameCategory.category)
                                .font(.custom("Philosopher-Bold", size: 34))
                                .foregroundColor(.white)
                        }
                    }
                    .padding(20)
                    .frame(maxWidth: .infinity, alignment: .leading)

                    Image("trophy").resizable().scaledToFit().frame(width: 80).padding(20)
                }
            )
    }
}

struct PrimaryCard_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryCard(gameCategory: GameCategory(type: "MultultipleChoice", category: "Geography"))
    }
}
