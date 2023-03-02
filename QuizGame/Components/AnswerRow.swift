//
//  AnswerRow.swift
//  QuizGame
//
//  Created by Raul Palade on 02/03/23.
//

import SwiftUI

struct AnswerRow: View {
    var answer: String

    var body: some View {
        HStack {
            Text(answer)
                .font(.custom("Philosopher-Regular", size: 20))
        }.padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.white)
            .cornerRadius(10)
            .shadow(color: Color("ShadowColor"), radius: 10, x: 0, y: 5)
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: "Nitrogen")
    }
}
