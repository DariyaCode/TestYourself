//
//  ViewController.swift
//  TestYourself
//
//  Created by Dariya Gecher on 21.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    let quiz = ["HTML is ...","CSS is ...","Obj-c is ...","Java is ...","Swift us ...","Kotlin is ...","Flutter is ...","React Native is ..."]
    var questionNumber = 0
    
    struct Questions{
        let text: String
        let answer: String
        
        init(t: String, a: String) {
            text = t
            answer = a
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1
        UpdateUI()
    }
    
    func UpdateUI () {
        questionLabel.text = quiz[questionNumber]
    }


}

