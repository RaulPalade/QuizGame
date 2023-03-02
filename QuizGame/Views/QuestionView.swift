//
//  QuestionView.swift
//  QuizGame
//
//  Created by Raul Palade on 02/03/23.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        ZStack {
            BackgroundGradient(top: .blue, bottom: .purple)
            VStack(spacing: 40) {
                HStack {
                    Text("Quiz Game")
                        .font(.custom("Philosopher-Bold", size: 28))
                        .foregroundColor(.white)
                    Spacer()
                    Text("1 out of 10")
                        .font(.custom("Philosopher-Bold", size: 28))
                        .foregroundColor(.white)
                }

                ProgressBar(progress: 175)

                VStack(alignment: .leading, spacing: 30) {
                    Text("Along with Oxygen, which element is primarily responsible for the sky appearing blue?")
                        .foregroundColor(.white)
                        .font(.custom("Philosopher-Bold", size: 22))

                    AnswerRow(answer: "Nitrogen")
                    AnswerRow(answer: "Helium")
                    AnswerRow(answer: "Carbon")
                    AnswerRow(answer: "Hydrogen")
                }

                PrimaryButton(text: "Next")
                Spacer()
            }
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarHidden(true)
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
