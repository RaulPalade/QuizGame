//
//  GameCategoryView.swift
//  QuizGame
//
//  Created by Raul Palade on 01/03/23.
//

import SwiftUI

struct GameCategoryView: View {
    var gameTypes = [
        GameCategory(type: "Multultiple Choice", category: "Geography"),
        GameCategory(type: "Multultiple Choice", category: "Science"),
        GameCategory(type: "True/False", category: "Film"),
        GameCategory(type: "Multultiple Choice", category: "Gossip"),
    ]

    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
                Text("Let's Play")
                    .font(.custom("Philosopher-Bold", size: 42))
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.red, .blue],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .fontWeight(.heavy)

                ScrollView {
                    VStack {
                        ForEach(gameTypes, id: \.id) { gameType in
                            NavigationLink(
                                destination: QuestionView(),
                                label: {
                                    PrimaryCard(gameCategory: gameType).padding()
                                })
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct GameCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        GameCategoryView()
    }
}
