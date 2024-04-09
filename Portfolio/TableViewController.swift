//
//  TableViewController.swift
//  Portfolio
//
//  Created by Alexandra Burke on 10/18/23.
//

import Foundation
import UIKit

class TableViewController: UITableViewController  {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(indexPath.section)
        
    }
    
}

