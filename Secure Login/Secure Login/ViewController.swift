//
//  ViewController.swift
//  Secure Login
//
//  Created by Alexandra Burke on 10/3/23.
//

import UIKit

var activeUser = ""

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if activeUser == "" {
            lblActiveUser.text = ""
        }
        else {
            lblActiveUser.text = "Goodbye \(activeUser)"
        }
    }
    
    @IBOutlet weak var lblActiveUser: UILabel!
    
    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func btnSignIn(_ sender: UIButton) {
        
        if (txtUsername.text == "anb" && txtPassword.text == "cats")
            
        {
            activeUser = txtUsername.text!
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secureVC = storyboard.instantiateViewController(withIdentifier: "SecureView")
            
            secureVC.modalPresentationStyle = .fullScreen
            secureVC.modalTransitionStyle = .partialCurl
            
            show (secureVC, sender: self)
        }
        else {
            let alertController = UIAlertController(title: "Incorrect Login Information", message: "Please try again.", preferredStyle: UIAlertController.Style.alert)
            
  //          alertController.addAction(UIAlertAction(title: "OK", style: UIAlertController.Style.default))
            
            present(alertController, animated: true)
        }
    }
}

