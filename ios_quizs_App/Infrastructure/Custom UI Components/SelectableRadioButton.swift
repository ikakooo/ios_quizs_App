//
//  SelectableRadioButton.swift
//  ios_quizs_App
//
//  Created by MacBook Pro on 16.11.21.
//

import UIKit
@IBDesignable
final class SelectableRadioButton: UIButton {
    @IBInspectable var isRadioButtonSelected: Bool = false
    var alternateButton:Array<SelectableRadioButton>?
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 2.0
        self.layer.masksToBounds = true
    }
    
   private func unselectAlternateButtons() {
        if alternateButton != nil {
            self.isSelected = true
            
            for aButton:SelectableRadioButton in alternateButton! {
                aButton.isSelected = false
            }
        } else {
            toggleButton()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        unselectAlternateButtons()
        super.touchesBegan(touches, with: event)
    }
    
    private func toggleButton() {
        self.isSelected = !isSelected
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                isRadioButtonSelected = isSelected
                self.layer.borderColor = UIColor.green.cgColor
            } else {
                isRadioButtonSelected = isSelected
                self.layer.borderColor = UIColor.black.cgColor
            }
        }
    }
}
