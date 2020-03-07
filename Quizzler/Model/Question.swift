//
//  Question.swift
//  Quizzler
//
//  Created by Apple on 03/01/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String
    
    
    init(q: String, a:[String], c:String) {
        text = q
        answer = a
        correctAnswer = c
    }
}
