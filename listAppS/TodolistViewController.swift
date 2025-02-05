//
//  ViewController.swift
//  listAppS
//
//  Created by Rogerio Cardoso filho on 03/02/25.
//

import UIKit

class TodolistViewController: UITableViewController {
    
    var itemArray = [""]
    
    let userDefaults = UserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let items = userDefaults.array(forKey: "TodoListArray") as? [String] {
            itemArray = items
        }
    }
    
    //Mark - tableview datasource methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            cell.accessoryType = (cell.accessoryType == .checkmark) ? .none : .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Todoey Item", message: "", preferredStyle: .alert)
        
        alert.addTextField { alertTextField in
            alertTextField.placeholder = "Create new Item"
            textField = alertTextField
        }
        
        let action = UIAlertAction(title: "Add Item", style: .default) { action in
            if textField.text != "" {
                self.itemArray.append(textField.text ?? "")
                
                self.userDefaults.set(self.itemArray, forKey: "TodoListArray")
                
                self.tableView.reloadData()
            }
        }
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
}
