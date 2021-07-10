//
//  ViewController.swift
//  LuxsoftTableView
//
//  Created by René Sestier on 09/07/21.
//

import UIKit

class LandingTableController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var tasksList: [TaskModel] = [TaskModel]()
    let tasksManager = TasksManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        let jsonData = tasksManager.loadJSONData(filename: "data")
        let decodedData = tasksManager.parse(jsonData: jsonData!)
        self.tasksList = decodedData!
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

//MARK: - TableViewDelegate
extension LandingTableController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jsonCell", for: indexPath) as! LandingTableViewCell
        cell.selectionStyle = .none
        
        cell.lblTitle.text = tasksList[indexPath.row].title
        cell.lblDescription.text = tasksList[indexPath.row].details.description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tasksList.count
    }
}
