//
//  UITableViewCell+Extension.swift
//  ios_quizs_App
//
//  Created by MacBook Pro on 16.11.21.
//

import UIKit

extension UITableViewCell {
    
    static var identifier: String { String(describing: self) }
    
    static var nib: UINib { UINib(nibName: identifier, bundle: Bundle.main) }
}
