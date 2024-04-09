//
//  ViewController.swift
//  Dice Game
//
//  Created by Alexandra Burke on 9/21/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        RollDice()
    }

    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    
    let diceArray : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var imgDice1: UIImageView!
    
    
    @IBOutlet weak var imgDice2: UIImageView!
    
    
    @IBAction func btnRollDice(_ sender: UIButton) {
        
       
         
        }
    }
    
    func RollDice() {
        
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        
      //  print(randomDice1)
     //   print(randomDice2)
     
        imgDice1.image = UIImage(named: diceArray[randomDice1])
        imgDice2.image = UIImage(named: diceArray[randomDice2])
        
        if(randomDice1 == randomDice2) {
            // congratulations pop up message
            let alertController = UIAlertController(title: "Great job!", message: "Matching Dice", preferredStyle: <#T##UIAlertController.Style#>.alert)
            
            alertController.addAction(<#T##UIAlertAction#>(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
    }
    
}

override func motionEnded(_motion: UIEvent.EventSubtype, with event: UIEvent?)
if motion == .motionShake {
    Roll
}

