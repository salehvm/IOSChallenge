//
//  Questions.swift
//  IOSChallenge
//
//  Created by Saleh Majıdov on 12/10/18.
//  Copyright © 2018 Saleh Majıdov. All rights reserved.
//

import Foundation

class Question {
    
    
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
    
    init(questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int){
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = answer
    }
    
}
