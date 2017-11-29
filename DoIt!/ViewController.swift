//
//  ViewController.swift
//  DoIt!
//
//  Created by David Hoogerheide on 29/11/2017.
//  Copyright © 2017 David Hoogerheide. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Hello"
        return cell
        
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


