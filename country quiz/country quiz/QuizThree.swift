//
//  QuizThree.swift
//  country quiz
//
//  Created by Jorge Sanchez on 2/9/19.
//  Copyright © 2019 Jorge Sanchez. All rights reserved.
//

import UIKit

class QuizThree: UIViewController {
    
    var qCounter = 0 //question number - 1
    let chosenNation = 2 //index for INDIA
    let countryBank = CountryBank()
    
    
    @IBOutlet weak var answerButtonI: UIButton!
    @IBOutlet weak var answerButtonII: UIButton!
    @IBOutlet weak var answerButtonIII: UIButton!
    @IBOutlet weak var answerButtonIV: UIButton!
    
    @IBOutlet weak var currQuestionDisp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currQuestionDisp.text = getQText()
        setAnswerTitleButtons()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if sender.tag == getRightAnswer() {
            ProgressHUD.showSuccess("Correct")
        }
        else {
            
            var rightAnswer: String
            
            switch countryBank.countryList[chosenNation].questionList[qCounter].answer {
                
            case 1:
                rightAnswer = getCurrQuestion().pAnswerA
            case 2:
                rightAnswer = getCurrQuestion().pAnswerB
            case 3:
                rightAnswer = getCurrQuestion().pAnswerC
            default:
                rightAnswer = getCurrQuestion().pAnswerD
                
            }
            
            ProgressHUD.showError("Incorrect, right:\n\(rightAnswer)")
            
            /*ProgressHUD.showError("Incorrect")*/
        }
        updateUI()
    }
    
    func getCurrQuestion() -> Question {
        let q: Question = countryBank.countryList[chosenNation].questionList[qCounter]
        return q
    }
    
    func setAnswerTitleButtons() {
        answerButtonI.setTitle(countryBank.countryList[chosenNation].questionList[qCounter].pAnswerA, for: .normal)
        answerButtonII.setTitle(countryBank.countryList[chosenNation].questionList[qCounter].pAnswerB, for: .normal)
        answerButtonIII.setTitle(countryBank.countryList[chosenNation].questionList[qCounter].pAnswerC, for: .normal)
        answerButtonIV.setTitle(countryBank.countryList[chosenNation].questionList[qCounter].pAnswerD, for: .normal)
    }
    
    func getQText() -> String {
        return countryBank.countryList[chosenNation].questionList[qCounter].questionText
    }
    
    func getRightAnswer() -> Int {
        return countryBank.countryList[chosenNation].questionList[qCounter].answer
    }
    
    func updateUI() {
        qCounter += 1
        if qCounter < countryBank.countryList[chosenNation].questionList.count {
            currQuestionDisp.text = getQText()
            setAnswerTitleButtons()
        }
        else {
            disableAnswerButtons()
        }
    }
    
    func disableAnswerButtons() {
        answerButtonI.isEnabled = false
        answerButtonII.isEnabled = false
        answerButtonIII.isEnabled = false
        answerButtonIV.isEnabled = false
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
