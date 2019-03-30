//
//  Question.swift
//  quiz nations
//
//  Created by Jorge Sanchez on 2/9/19.
//  Copyright © 2019 Jorge Sanchez. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    
    let pAnswerA: String
    let pAnswerB: String
    let pAnswerC: String
    let pAnswerD: String
    
    let answer: Int
    
    init(question: String, A: String, B: String, C: String, D: String, correctAnswer: Int) {
        
        self.questionText = question
        
        self.pAnswerA = A
        self.pAnswerB = B
        self.pAnswerC = C
        self.pAnswerD = D
        
        self.answer = correctAnswer
        
    }
    
}

