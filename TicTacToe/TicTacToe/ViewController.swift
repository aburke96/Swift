//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alexandra Burke on 11/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    var activeGame = true
    var activePlayer = 1 // 1 means x and 2 means y and 0 means empty)
    
    var gameState = [0,0,0,0,0,0,0,0,0] // 0 means empty
    
    var winningCombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblWinner.isHidden = true
        playAgainBtn.isHidden = true
        
    }
    
    @IBOutlet weak var lblWinner: UILabel!
    
    @IBOutlet weak var playAgainBtn: UIButton!
    
    
    @IBAction func playAgainBTN(_ sender: UIButton) {
        
        activeGame = true
        activePlayer = 1
        gameState = [0,0,0,0,0,0,0,0,0]
        
        playAgainBtn.isHidden = true
        lblWinner.isHidden = true
        
        for i in 1..<10 {
            if let button = view.viewWithTag(i) as? UIButton
            {
                button.setImage(nil, for: [])
            }
        }
    }
    
    @IBAction func btnButtonPressed(_ sender: UIButton) {
        
        let activePosition = sender.tag - 1
        if activeGame && gameState[activePosition] == 0 {
            
            gameState[activePosition] = activePlayer
        }
        
        if activePlayer == 1 {
            sender.setImage(UIImage(named: "cross.png"), for: [])
            activePlayer = 2
        }
        else {
            sender.setImage(UIImage(named: "nought.png"), for: [])
            activePlayer = 1
        }
        
        
        for combination in winningCombinations {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]
            {
                
                activeGame = false
                
                if gameState[combination[0]] == 1 {
                    lblWinner.text = "X is the winner!"
                } else {
                    lblWinner.text = "O is the winner!"
                }
                
                lblWinner.isHidden = false
            }
            
        }
        
        if activeGame && !gameState.contains(0) {
            activeGame = false
            lblWinner.text = "It is a tie!"
            lblWinner.isHidden = false
            playAgainBtn.isHidden = false
        }
        
    }
}

