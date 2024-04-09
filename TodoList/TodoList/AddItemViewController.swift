//
//  AddItemViewController.swift
//  TodoList
//
//  Created by Alexandra Burke on 10/10/23.
//

import UIKit

class AddItemViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var txtItem: UITextField!
    
    
    @IBAction func btnAddItem(_ sender: UIButton) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "Items")
        
        if let tempItems = itemsObject as? [String] {
            items = tempItems
        }
        
        if txtItem.text != nil && txtItem.text != "" {
            
            items.append(txtItem.text!)
            
            UserDefaults.standard.set(items, forKey: "Items")
            
            txtItem.text = ""
            self.tabBarController?.selectedIndex = 0
        }
        
    }
}
