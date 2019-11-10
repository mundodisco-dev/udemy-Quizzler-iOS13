//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Adrian Martinez on 28/10/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct Question {
    let text: String
    let possibleAnswers: [String]
    let answer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        possibleAnswers = a
        answer = correctAnswer
    }
}
