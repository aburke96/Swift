//
//  ViewController.swift
//  TipCalculator
//
//  Created by Alexandra Burke on 9/7/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var txtTotal: UITextField!
    
    
    @IBOutlet weak var segPercent: UISegmentedControl!
    
    
    @IBAction func btnCalculate(_ sender: UIButton) {
        
        let userInput = Float(txtTotal.text!)
        
        if(userInput == nil)
        {
            // alert the user
            
            let alertController = UIAlertController(title: "Incorrect Bill Amount", message: "Bill Amount CANNOT Be Blank", preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            present(alertController, animated: true, completion: nil)
            
            return
        }
        
        let index : Int = segPercent.selectedSegmentIndex
        
        var tipRate : Float = 0.15
        
        if index == 0 {
            tipRate = 0.15
        }
        else if index == 1 {
            tipRate = 0.20
        }
        else {
            tipRate = 0.25
        }
        
        let tip = userInput! * tipRate
        
        let display = String(format: "%.2f", tip)
        
        lblTotal.text = display
    }
    
    @IBOutlet weak var lblTotal: UILabel!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

