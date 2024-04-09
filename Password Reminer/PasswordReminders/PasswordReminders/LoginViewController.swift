//
//  LoginViewController.swift
//  PasswordReminders
//
//  Created by Alexandra Burke on 11/2/23.
//

import UIKit
import CoreData

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUsername: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func btnLogin(_ sender: UIButton) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
               let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Login")
               fetchRequest.predicate = NSPredicate(format: "username = %@", txtUsername.text ?? "")

               do {
                   let results = try context.fetch(fetchRequest)
                   if let login = results.first {
                       if let savedPassword = login.value(forKey: "password") as? String, savedPassword == txtPassword.text {
                           // Successfully logged in
                           // Navigate to next view or show a welcome message
                       } else {
                           showErrorAlert()
                       }
                   } else {
                       showErrorAlert()
                   }
               } catch let error as NSError {
                   print("Could not fetch data. \(error), \(error.userInfo)")
               }
           }

           func showErrorAlert() {
               let alert = UIAlertController(title: "Error", message: "Incorrect username or password. Please try again.", preferredStyle: .alert)
               alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
               self.present(alert, animated: true, completion: nil)
           }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
