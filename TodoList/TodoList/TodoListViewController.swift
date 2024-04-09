//
//  TodoListViewController.swift
//  TodoList
//
//  Created by Alexandra Burke on 10/10/23.
//

import UIKit

var items : [String] = []

class TodoListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
    
        var content = cell.defaultContentConfiguration()
        
        content.text = items[indexPath.row]
        cell.contentConfiguration = content
        
       // cell.textLabel?.text = items[indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            items.remove(at: indexPath.row)
            tblItems.reloadData()
            UserDefaults.standard.set(items, forKey: "Items")
        }
    }
    
    
    @IBOutlet weak var tblItems: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "Items")
        
        if let tempItems = itemsObject as? [String] {
            items = tempItems
        }
        
        tblItems.reloadData()
    }
    
    
}
