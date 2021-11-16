//
//  TaskTableViewCell.swift
//  ios_quizs_App
//
//  Created by MacBook Pro on 16.11.21.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerOne:UIButton!
    @IBOutlet weak var answerTwo: UIButton!
    @IBOutlet weak var answerThree: UIButton!
    @IBOutlet weak var answerFour: UIButton!
    @IBOutlet weak var numberingLabel: UILabel!
    
    
    // var correct: Int = 0
    var correctAnswer: ANS?
    var task: Task?
    
    weak var delegate: TaskTableViewCellUpdaterDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    func configure(with: Task){
        task = with
        questionLabel.text = with.question
        answerOne.setAllStatesTitle(with.answer_I)
        answerTwo.setAllStatesTitle(with.answer_II)
        answerThree.setAllStatesTitle(with.answer_III)
        answerFour.setAllStatesTitle(with.answer_IV)
        
        
        switch with.selected {
        case .I: buttonSelected(answerOne)
        case .II: buttonSelected(answerTwo)
        case .III: buttonSelected(answerThree)
        case .IV: buttonSelected(answerFour)
        default : buttonUnSelected()
        }
        
        
        
    }
    
    func buttonSelected(_ button:UIButton){
        answerOne.isEnabled = false
        answerTwo.isEnabled = false
        answerThree.isEnabled = false
        answerFour.isEnabled = false
        button.blueSelected()
        button.isEnabled = true
    }
    func buttonUnSelected(){
        answerOne.isEnabled = true
        answerTwo.isEnabled = true
        answerThree.isEnabled = true
        answerFour.isEnabled = true
        answerOne.unSelected()
        answerTwo.unSelected()
        answerThree.unSelected()
        answerFour.unSelected()
    }
    
    
    
    @IBAction func onAnswersButtonsClick(_ sender: UIButton) {
        guard let task = task else {return}
        
        switch sender.tag {
        case 1 : delegate?.selectAnswer(ANS.I,task:task)
        case 2 : delegate?.selectAnswer(ANS.II,task:task)
        case 3 : delegate?.selectAnswer(ANS.III,task:task)
        case 4 : delegate?.selectAnswer(ANS.IV,task:task)
        default: return
        }
    }
}

protocol TaskTableViewCellUpdaterDelegate: QuizSceneViewController {
    func selectAnswer(_ isANS: ANS ,task:Task)
}
