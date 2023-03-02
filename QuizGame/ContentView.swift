//
//  ContentView.swift
//  QuizGame
//
//  Created by Raul Palade on 01/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundGradient(top: .blue, bottom: .purple)
                VStack(spacing: 40) {
                    Image("trophy").resizable().scaledToFit().frame(width: 160)
                    VStack(spacing: 20) {
                        Text("Quiz Game")
                            .font(.custom("Philosopher-Bold", size: 44))
                            .fontWeight(.heavy)
                            .foregroundColor(Color("WhiteButton"))

                        Text("Are you ready to test out your trivia skills?")
                            .font(.custom("Philosopher-Bold", size: 18))
                            .fontWeight(.light)
                            .foregroundColor(Color("WhiteButton"))
                    }

                    NavigationLink {
                        GameCategoryView()
                    } label: {
                        PrimaryButton(text: "Let's go!")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
