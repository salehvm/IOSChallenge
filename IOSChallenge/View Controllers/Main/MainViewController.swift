//
//  MainViewController.swift
//  IOSChallenge
//
//  Created by Saleh Majıdov on 12/10/18.
//  Copyright © 2018 Saleh Majıdov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // IBOutlets

    @IBOutlet weak var questionNumber: UILabel!
    @IBOutlet weak var wildCardNumber: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    // Variables
    
    let allQuestions = QuestionsList()
    var questionNumbers: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    var wildCard: Int = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        wildCardNumber.text = "\(wildCard)"
        updateQuestion()
        updateUI()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            print("correct")
            score += 1
            
//            sender.backgroundColor = UIColor.green
            questionNumbers += 1
            updateQuestion()
            
        }
        else {
//            sender.backgroundColor = UIColor.red
          
            
            let alert = UIAlertController(title: "Hurry", message: "Time is runnig out, use a wild card", preferredStyle: UIAlertController.Style.alert)
            
            // add the actions (buttons)
            alert.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: { action in
                
                self.wildCard -= 1
                self.wildCardNumber.text = "\(self.wildCard)"
                print("one wild card remove")
                
                
            
            }))

            let noAction = UIAlertAction(title: "No", style: .cancel) { (action) in
                print("Alert was no")
                
                print("show correct answer and present to lose page")
               
            }
            
            alert.addAction(noAction)
            
            
            
            // show the alert
            
            DispatchQueue.main.async {
                
                if self.wildCard == 0 {
                    
                    print("present to lose page")
                    
                    return
                }
                self.present(alert, animated: true, completion: nil)
            }
            
            
            print("incorrect")
            
        }
    }
    
    func updateQuestion() {
        
        if questionNumbers <= allQuestions.list.count - 1 {
            questionLabel.text = allQuestions.list[questionNumbers].question
            optionA.setTitle(allQuestions.list[questionNumbers].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumbers].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumbers].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.list[questionNumbers].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumbers].correctAnswer
            updateUI()
            
        }
        else {
            print("end quiz")
        }
    }
    
    func updateUI() {
        questionNumber.text = "\(questionNumbers + 1)/\(allQuestions.list.count)"
    }
    
    func restartQuiz(){
        score = 0
        questionNumbers = 0
        updateQuestion()
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
