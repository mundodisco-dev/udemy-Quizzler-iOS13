//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to Six","True"],
        ["Five - Three is greater than One","True"],
        ["Three + Eight is less than Ten","False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnwser = sender.currentTitle
        let actualAnwser = quiz[questionNumber][1]
        
        if (userAnwser == actualAnwser) {
            print("right")
        }
        else {
            print("wrong")
        }
        
        if (questionNumber + 1 < quiz.count) {
            questionNumber += 1
        } else {
            print("end, restarting")
            questionNumber = 0
        }
        updateUI()
    }
    
    func updateUI() {
        if (questionNumber < quiz.count) {
            questionLabel.text = quiz[questionNumber][0]
        }
        
    }
    
}

