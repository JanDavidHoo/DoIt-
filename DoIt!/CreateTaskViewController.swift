//
//  CreateTaskViewController.swift
//  DoIt!
//
//  Created by David Hoogerheide on 29/11/2017.
//  Copyright © 2017 David Hoogerheide. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTaskBut(_ sender: Any) {
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
        
        
        
    }
    
    
    
    
   
}
