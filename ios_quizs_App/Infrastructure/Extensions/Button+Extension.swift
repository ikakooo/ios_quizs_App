//
//  Button+Extension.swift
//  ios_quizs_App
//
//  Created by MacBook Pro on 17.11.21.
//

import Foundation
import UIKit

extension UIButton{
    func correctGreenSelected(){
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 2.0
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor.green.cgColor
    }
    func blueSelected(){
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 2.0
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor.blue.cgColor
    }
    func inCorrectRedSelected(){
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 2.0
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor.red.cgColor
    }
    func unSelected(){
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 2.0
        self.layer.masksToBounds = true
        self.layer.borderColor = UIColor.white.cgColor
    }
}

extension UIButton {
    public func setAllStatesTitle(_ newTitle: String?){
        self.setTitle(newTitle, for: .normal)
        self.setTitle(newTitle, for: .selected)
        self.setTitle(newTitle, for: .disabled)
    }
}
