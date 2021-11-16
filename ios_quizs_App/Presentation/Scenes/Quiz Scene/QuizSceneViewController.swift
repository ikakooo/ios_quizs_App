//
//  QuizSceneViewController.swift
//  ios_quizs_App
//
//  Created by MacBook Pro on 16.11.21.
//

import UIKit

class QuizSceneViewController: UIViewController {
    @IBOutlet weak var tasksTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        // Do any additional setup after loading the view.
        
        tasksTableView.dataSource = self
        tasksTableView.registerNib(class: TaskTableViewCell.self)
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


extension QuizSceneViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if tableView == downloadsTableView {
//            return downloadTasks.count
//        }
        return 10 //completedTasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.deque(TaskTableViewCell.self, for: indexPath)
        
//        if tableView == downloadsTableView {
//            cell.configure(with: downloadTasks[indexPath.row])
//        }else {
//            cell.configure(with: completedTasks[indexPath.row])
//        }
        
        
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
