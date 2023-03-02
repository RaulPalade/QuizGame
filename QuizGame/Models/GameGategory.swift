//
//  GameGategory.swift
//  QuizGame
//
//  Created by Raul Palade on 02/03/23.
//

import Foundation

struct GameCategory: Identifiable {
    var id = UUID()
    var type: String
    var category: String
}
