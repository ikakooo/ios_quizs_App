//
//  QuizSceneViewController.swift
//  ios_quizs_App
//
//  Created by MacBook Pro on 16.11.21.
//

import UIKit

class QuizSceneViewController: UIViewController,TaskTableViewCellUpdaterDelegate {
    func selectAnswer(_ isANS: ANS,task:Task) {
        tasks = tasks.map{
            if $0.id == task.id {
                var updatedTask = task
                updatedTask.selected = isANS
                return updatedTask
            }else {return $0}
        }
    }
    
   
    
    @IBOutlet weak var tasksTableView: UITableView!
    
   // var tasks:[Task]=[]
    
    var tasks = [Task]() {
        didSet {
            tasksTableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        // Do any additional setup after loading the view.
        
        let task1 = Task(id:24313,
                         question: "StringS tringStringS tringStri ngString?",
                         answer_I: "String?",
                         answer_II: "sdjfdjfksd sdjfkds sdfjsdlf sdjfn",
                         answer_III: "dsfsd",
                         answer_IV: "dsfsdfs dfs ssdf dsfsd f dsgsd g",
                         correct: ANS.III,
                         selected: nil )
        let task2 = Task(id:24313354,
                         question: "StringS tringStringS tringStri ngString?",
                         answer_I: "String?",
                         answer_II: "sdjfdjfksd sdjfkds sdfjsdlf sdjfn",
                         answer_III: "dsfsd",
                         answer_IV: "dsfsdfs dfs ssdf dsfsd f dsgsd g",
                         correct: ANS.III,
                         selected: nil )
        
        let task3 = Task(id:32452342,
                         question: "What does BBC stand for?",
                         answer_I: "String?",
                         answer_II: "ikakooo",
                         answer_III: "British Broadcasting Corporation",
                         answer_IV: "hi",
                         correct: ANS.III,
                         selected: nil )
        let task4 = Task(id:3455443,
                         question: "What nut is used to make marzipan?",
                         answer_I: "String?",
                         answer_II: "Almonds",
                         answer_III: "dsfsd",
                         answer_IV: "Balmoral Castle",
                         correct: ANS.II,
                         selected: nil )
        let task5 = Task(id:34543,
                         question: "What element does 'O' represent on the periodic table?",
                         answer_I: "Oxygen",
                         answer_II: "Almonds",
                         answer_III: "Will Turner",
                         answer_IV: "12",
                         correct: ANS.I,
                         selected: nil )
        
        tasks.append(task4)
        tasks.append(task3)
        tasks.append(task2)
        tasks.append(task5)
        tasks.append(task1)
        tasks.append(task1)
        tasks.append(task1)
        tasks.append(task1)
        tasks.append(task1)
        tasks.append(task1)
        tasks.append(task1)
        tasks.append(task1)
        tasks.append(task1)
        tasks.append(task1)
        tasks.append(task1)
        tasks.append(task1)
        tasks.append(task1)
        tasks.append(task1)
        
        tasksTableView.dataSource = self
        tasksTableView.registerNib(class: TaskTableViewCell.self)
    }
    
    @IBAction func onSubmitClick(_ sender: Any) {
        performSegue(withIdentifier: "ResultFullScreenViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewControler =   segue.destination as? ResultFullScreenViewController
        viewControler?.tasks = tasks
        //print("taskkkkkkkk \(cellIndexPathRow)")
    }
    
}


extension QuizSceneViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.deque(TaskTableViewCell.self, for: indexPath)
        
        cell.delegate = self
        cell.numberingLabel.text = "\(indexPath.row + 1))"
        cell.configure(with: tasks[indexPath.row])
        
        return cell
    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        if tableView === downloadsTableView {
//            return "Download Queue (\(downloadTasks.count))"
//        } else if tableView === completedTableView {
//            return "Completed (\(completedTasks.count))"
//        } else {
//            return nil
//        }
//    }

}
