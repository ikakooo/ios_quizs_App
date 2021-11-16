//
//  ResultFullScreenViewController.swift
//  ios_quizs_App
//
//  Created by MacBook Pro on 17.11.21.
//

import UIKit

class ResultFullScreenViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    
    var tasks:[Task]=[]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text =  "\( tasks.filter{$0.selected == $0.correct}.count)"
        // Do any additional setup after loading the view.
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
