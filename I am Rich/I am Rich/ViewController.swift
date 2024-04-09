//
//  ViewController.swift
//  I am Rich
//
//  Created by Alexandra Burke on 9/6/23.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
        // Do any additional setup after loading the view.
//    }

    @IBAction func btnWelcome(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "Welcome rich person", message: "Hello user", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
}

