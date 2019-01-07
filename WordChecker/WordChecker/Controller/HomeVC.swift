//
//  ViewController.swift
//  WordChecker
//
//  Created by Andreas Schultz on 07.01.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITextFieldDelegate {
    
    //PROPERTIES
    @IBOutlet var checkerTextField: CheckerTextField!
    @IBOutlet var wordLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var pointsLabel: UILabel!
    
    //OVERRIDE FUNCS

    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkerTextField.delegate = self
        
        enableLabels(enable: false)
    }
    
    //CUSTOM FUNCS
    
    func changeWordLabelText(withText text: String) {
        wordLabel.text = "Das Wort \(text) ist"
    }
    
    func enableLabels(enable: Bool) {
        if enable == false {
            wordLabel.isHidden = true
            resultLabel.isHidden = true
            pointsLabel.isHidden = true
        } else {
            wordLabel.isHidden = false
            resultLabel.isHidden = false
            pointsLabel.isHidden = false
        }
    }
    
    //ACTIONS

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let text = checkerTextField.text {
            print(text)
            changeWordLabelText(withText: text.uppercased())
            if checkIfWordIsValid(wordToCheck: text.uppercased()) {
                resultLabel.text = "Zulässig"
                resultLabel.textColor = #colorLiteral(red: 0, green: 0.2705882353, blue: 0.07058823529, alpha: 1)
                pointsLabel.text = "Punkte: \(pointsForWord(word: text.uppercased()))"
            } else {
                resultLabel.text = "Unzulässig"
                resultLabel.textColor = #colorLiteral(red: 0.4392545819, green: 0.009904155508, blue: 0.06312271208, alpha: 1)
                pointsLabel.text = " "
            }
            enableLabels(enable: true)
        }
        
        checkerTextField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        checkerTextField.text = ""
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (string == " ") {
            return false
        }
        return true
    }
}

