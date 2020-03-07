//
//  ViewController.swift
//  Quizzler
//
//  Created by Apple on 03/01/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import UIKit

class QestionsViewController: UIViewController {
    
    @IBOutlet weak var questionsLabel: UILabel!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var bottomButton: UIButton!
    @IBOutlet weak var middleButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        
        let userGotITRight = quizBrain.checkAnswer(userAnswer!)
        
        if userGotITRight {
            //quizBrain.userScore()
            
            sender.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            quizBrain.getScore()
            
        } else {
            
            sender.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        
        middleButton.setTitle(quizBrain.middleButtonText(), for: UIControl.State.normal)
        topButton.setTitle(quizBrain.topButtonText(), for: UIControl.State.normal)
        bottomButton.setTitle(quizBrain.buttonButtonText(), for: UIControl.State.normal)
        questionsLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = ("score: \(quizBrain.quizScore)")
        topButton.backgroundColor = UIColor.clear
        middleButton.backgroundColor = UIColor.clear
        bottomButton.backgroundColor = UIColor.clear
        
    }
}

