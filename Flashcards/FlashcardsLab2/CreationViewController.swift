//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Nia Davis on 3/13/20.
//  Copyright © 2020 Nia Davis. All rights reserved.
//
import UIKit

class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!
    var questionText: String = ""
    var answerText: String = ""
    var extraAnswerOneText: String = ""
    var extraAnswerTwoText: String = ""
    
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    
    @IBOutlet weak var extraAnswerOne: UITextField!
    @IBOutlet weak var extraAnswerTwo: UITextField!
    
    var initialQuestion: String?
    var initialAnswer: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionTextField.text = initialQuestion
        answerTextField.text = initialAnswer

    }
    
    @IBAction func didTapOnCancel(_ sender: Any) {
         dismiss(animated: true)
    }

    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = questionTextField.text
                
        let answerText = answerTextField.text
        let alert = UIAlertController(title: "Missing Text", message: "You need to enter both a question and an answer",
            preferredStyle: .alert)
                
        if (questionText == nil || answerText == nil || questionText!.isEmpty || answerText!.isEmpty){
            present(alert, animated: true)
        }else {
            flashcardsController.updateFlashcard(question: questionText!, answer: answerText!, extraAnswerOne: extraAnswerOneText, extraAnswerTwo: extraAnswerTwoText)
            present(alert, animated: true)
            }

            let okAction = UIAlertAction(title: "Ok!", style: .default)
            alert.addAction(okAction)

        }
    }
