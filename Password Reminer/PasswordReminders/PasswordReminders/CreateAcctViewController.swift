//
//  CreateAcctViewController.swift
//  PasswordReminders
//
//  Created by Alexandra Burke on 11/2/23.
//
import UIKit
import CoreData

class CreateAcctViewController: UIViewController {

    @IBOutlet weak var txtCreateAcct: UITextField!
    
    @IBOutlet weak var txtCreatePassword: UITextField!

    @IBAction func btnCreate(_ sender: UIButton) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Account")
        fetchRequest.predicate = NSPredicate(format: "username = %@", txtCreateAcct.text ?? "")

        do {
            let results = try context.fetch(fetchRequest)
            if results.isEmpty {
                let newAccount = NSEntityDescription.insertNewObject(forEntityName: "Account", into: context)
                newAccount.setValue(txtCreateAcct.text, forKey: "username")
                newAccount.setValue(txtCreatePassword.text, forKey: "password")

                do {
                    try context.save()
                    print("Account created successfully.")
                } catch let error as NSError {
                    print("Could not save. \(error), \(error.userInfo)")
                }
            } else {
                print("Account with this username already exists.")
            }
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
