//
//  CheckerTextField.swift
//  WordChecker
//
//  Created by Andreas Schultz on 07.01.19.
//  Copyright © 2019 Andreas Schultz. All rights reserved.
//

import UIKit

class CheckerTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 0.4549019608, green: 0.4549019608, blue: 0.4549019608, alpha: 0.5)
        layer.cornerRadius = 5.0
        textAlignment = .center

        if placeholder == nil {
            placeholder = " "
        }
        
        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 0.8588235294, green: 0.8588235294, blue: 0.8588235294, alpha: 1)])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 0.8588235294, green: 0.8588235294, blue: 0.8588235294, alpha: 1)
    }

}
