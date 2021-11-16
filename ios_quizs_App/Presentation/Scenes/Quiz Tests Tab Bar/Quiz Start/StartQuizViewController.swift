//
//  StartQuizViewController.swift
//  ios_quizs_App
//
//  Created by MacBook Pro on 16.11.21.
//

import UIKit

class StartQuizViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view. StartQuizUINavigationController
    }
    

    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
}
