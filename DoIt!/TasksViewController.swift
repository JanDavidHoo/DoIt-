//
//  TasksViewController.swift
//  DoIt!
//
//  Created by David Hoogerheide on 29/11/2017.
//  Copyright © 2017 David Hoogerheide. All rights reserved.
//


import UIKit

class TasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func plusTapped(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addSegue" {
            let nextVC = segue.destination as! CreateTaskViewController
            nextVC.previousVC = self
        }
        if segue.identifier == "reminderSegue" {
            
        }
    }
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important == true {
             cell.textLabel?.text = "❗️\(task.name)"
        } else {
             cell.textLabel?.text = task.name
        }
       
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "reminderSegue", sender: nil)
    }
    
    func makeTasks() -> [Task] {
        let task1 = Task()
        task1.name = "Vuilnis buiten zetten"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Mama bellen"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Belasting betalen"
        task3.important = true
        
        let task4 = Task()
        task4.name = "Piano oefenen"
        task4.important = false
        
        return [task1, task2, task3, task4]
        
}
    
}


