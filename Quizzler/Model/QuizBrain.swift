//
//  quizBrain.swift
//  Quizzler
//
//  Created by Apple on 03/01/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        Question(q: "Q: Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], c: "Skin"),
        Question(q: "Q: Five dollars is worth how many nickels?", a: ["25", "50", "100"], c: "100"),
        Question(q: "Q: What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], c: "Greenwich Mean Time"),
        Question(q: "Q: What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], c: "Chapeau"),
        Question(q: "Q: In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], c: "Watch"),
        Question(q: "Q:How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], c: "Adiós"),
        Question(q: "Q: Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], c: "Orange"),
        Question(q: "Q: What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], c: "Rum"),
        Question(q: "Q: What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], c: "Gorilla"),
        Question(q: "Q: Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], c: "Australia")
    ]
    
    var quizScore = 0
    var questionNumber = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        
        
        if userAnswer == quiz[questionNumber].correctAnswer {
            
            return true
            
        } else {
            
            return false
            
        }
    }
    
    func getQuestionText() -> String {
        
        return quiz[questionNumber].text
        
    }
    
    func getProgress() -> Float {
        
        return Float(questionNumber + 1) / Float(quiz.count)
        
    }
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count {
            
            questionNumber += 1
            
        } else {
            
            questionNumber = 0
        }
        
    }
    mutating func getScore() {

        if questionNumber + 1 < quiz.count {
            
            quizScore += 1
        } else {
            
            quizScore = 0
        }
    }
    
    func topButtonText() -> String {
        return quiz[questionNumber].answer[0]
    }
    func middleButtonText() -> String {
        return quiz[questionNumber].answer[1]
        
    }
    func buttonButtonText() -> String {
        
        return quiz[questionNumber].answer[2]
    }
    
}
