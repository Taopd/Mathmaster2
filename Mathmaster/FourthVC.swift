//
//  FourthVC.swift
//  Mathmaster
//
//  Created by keval dattani on 24/03/20.
//  Copyright © 2020 keval dattani. All rights reserved.
//

import UIKit

class FourthVC: UIViewController {
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var labelFirstOption: UILabel!
    @IBOutlet weak var labelSecondOption: UILabel!
    @IBOutlet weak var labelCorrectionIncorrect: UILabel!
    @IBOutlet weak var labelScore: UILabel!
    
    @IBOutlet weak var buttonOneOutlet: UIButton!
    @IBOutlet weak var buttonTwoOutlet: UIButton!
    @IBOutlet weak var buttonThreeOutlet: UIButton!
    @IBOutlet weak var buttonFourOutlet: UIButton!
    
    var firstNumber : Int = 0
    var secondNumber : Int = 0
    var sumAnswer : Int = 0
    var whichButtonCorrect : Int = 0
    
    var otherAnswerWrong1 : Int = 0
    var otherAnswerWrong2 : Int = 0
    var otherAnswerWrong3 : Int = 0
    
    var score : Int = 0
    var left = 3
    
     @IBOutlet weak var lblLevel: UILabel!
    
    @IBOutlet weak var LblTurnLeft: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.LblTurnLeft.text = "Turn left \(left)"
        generateRandomNumbers()
        generateButtons()
        labelCorrectionIncorrect.text = ""
        labelScore.text = ""
        
        if isKeyPresentInUserDefaults(key: "level") {
                  let level = UserDefaults.standard.string(forKey: "level")
                  self.lblLevel.text = "Difficulty : \(level!)"
              }else {
                  self.lblLevel.text = "Difficulty : Easy"
              }

        // Do any additional setup after loading the view, typically from a nib.
    }
    func isKeyPresentInUserDefaults(key: String) -> Bool {
        return UserDefaults.standard.object(forKey: key) != nil
    }
    @IBAction func btnBackClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func firstButton(sender: UIButton) {
        if whichButtonCorrect == 0 {
            correct()
        }
        else{
            left = left-1
            self.LblTurnLeft.text = "Turn left \(left)"
            labelCorrectionIncorrect.text = "Incorrect"
            
            if left == 0 {
                let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SuccessVC") as? SuccessVC
                vc?.score = "\(score)"
                self.navigationController?.pushViewController(vc!, animated: true)
            }
        }
    }
    @IBAction func secondButton(sender: UIButton) {
        if whichButtonCorrect == 1 {
            correct()
        }
        else{
             left = left-1
            self.LblTurnLeft.text = "Turn left \(left)"
            labelCorrectionIncorrect.text = "Incorrect"
            
            if left == 0 {
                let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SuccessVC") as? SuccessVC
                vc?.score = "\(score)"
                self.navigationController?.pushViewController(vc!, animated: true)
            }
        }
    }
    @IBAction func thirdButton(sender: UIButton) {
        if whichButtonCorrect == 2 {
            correct()
        }
        else{
             left = left-1
            self.LblTurnLeft.text = "Turn left \(left)"
            labelCorrectionIncorrect.text = "Incorrect"
            
            if left == 0 {
                let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SuccessVC") as? SuccessVC
                vc?.score = "\(score)"
                self.navigationController?.pushViewController(vc!, animated: true)
            }
        }
    }
    @IBAction func fourthButton(sender: UIButton) {
        if whichButtonCorrect == 3 {
            correct()
        }
        else{
            left = left-1
            self.LblTurnLeft.text = "Turn left \(left)"
            labelCorrectionIncorrect.text = "Incorrect"
            
            if left == 0 {
                let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SuccessVC") as? SuccessVC
                vc?.score = "\(score)"
                self.navigationController?.pushViewController(vc!, animated: true)
            }
        }
    }
    
    func correct(){
        labelCorrectionIncorrect.text = "Correct"
        score = score + 1
        labelScore.text = "Score: \(score)"
        generateRandomNumbers()
        generateButtons()
    }
    
    func generateRandomNumbers(){
        firstNumber = Int(arc4random_uniform(100))
        secondNumber = Int(arc4random_uniform(100))
        whichButtonCorrect = Int(arc4random_uniform(4))
        sumAnswer = firstNumber / secondNumber
        
        otherAnswerWrong1 = sumAnswer - Int(arc4random_uniform(20)+1)
        otherAnswerWrong2 = sumAnswer + Int(arc4random_uniform(20)+1)
        otherAnswerWrong3 = sumAnswer + Int(arc4random_uniform(40)+1)
        
        labelFirstOption.text = "\(firstNumber)"
        labelSecondOption.text = "\(secondNumber)"
    }
    
    func generateButtons(){
        if whichButtonCorrect == 0 {
            buttonOneOutlet.setTitle("\(sumAnswer)", for: UIControl.State.normal)
            buttonTwoOutlet.setTitle("\(otherAnswerWrong1)", for:  UIControl.State.normal)
            buttonThreeOutlet.setTitle("\(otherAnswerWrong2)", for:  UIControl.State.normal)
            buttonFourOutlet.setTitle("\(otherAnswerWrong3)", for:  UIControl.State.normal)
        }
        if whichButtonCorrect == 1 {
            buttonTwoOutlet.setTitle("\(sumAnswer)", for:  UIControl.State.normal)
            buttonOneOutlet.setTitle("\(otherAnswerWrong1)", for:  UIControl.State.normal)
            buttonThreeOutlet.setTitle("\(otherAnswerWrong2)", for:  UIControl.State.normal)
            buttonFourOutlet.setTitle("\(otherAnswerWrong3)", for:  UIControl.State.normal)
        }
        if whichButtonCorrect == 2 {
            buttonThreeOutlet.setTitle("\(sumAnswer)", for:  UIControl.State.normal)
            buttonTwoOutlet.setTitle("\(otherAnswerWrong1)", for:  UIControl.State.normal)
            buttonOneOutlet.setTitle("\(otherAnswerWrong2)", for:  UIControl.State.normal)
            buttonFourOutlet.setTitle("\(otherAnswerWrong3)", for:  UIControl.State.normal)
        }
        if whichButtonCorrect == 3 {
            buttonFourOutlet.setTitle("\(sumAnswer)", for:  UIControl.State.normal)
            buttonTwoOutlet.setTitle("\(otherAnswerWrong1)", for:  UIControl.State.normal)
            buttonThreeOutlet.setTitle("\(otherAnswerWrong2)", for: UIControl.State.normal)
            buttonOneOutlet.setTitle("\(otherAnswerWrong3)", for:  UIControl.State.normal)
    }
    
    
}
}
