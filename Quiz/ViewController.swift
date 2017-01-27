//
//  ViewController.swift
//  Quiz
//
//  Created by Nasim on 1/27/17.
//  Copyright © 2017 Nasim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentIndex:Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    
    let questionArray:[String] = ["WHAT IS THE CAPITAL OF BANGLADESH?", "WHO IS THE FOUNDER OF FACEBOOK?","WHAT IS THE CAPITAL OF RUSSIA?","FULL FORM OF WHO?"]
    
    
    let answerArray:[String] = ["DHAKA","MARK ZUCKERBERG","MOSCOW","WORLD HEALTH ORGANIZATION"]
    
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        
        currentIndex += 1
       
        if currentIndex == questionArray.count{
            currentIndex = 0
        }
        let question:String = questionArray[currentIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        
        let answer:String = answerArray[currentIndex]
        answerLabel.text = answer

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        questionLabel.text = questionArray[currentIndex]
        
    }

   


}

