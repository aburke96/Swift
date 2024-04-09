//
//  ViewController.swift
//  Animation
//
//  Created by Alexandra Burke on 11/28/23.
//

import UIKit

class ViewController: UIViewController {

    var blueBox: UIView?
    var yellowBox: UIView?
    var greenBox: UIView?
    var redBox: UIView?
    var animation: UIDynamicAnimator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Draw a green rectangle
        let greenRect = CGRect(x: 150, y: 150, width: 100, height: 100)
        greenBox = UIView(frame: greenRect)
        greenBox?.backgroundColor = UIColor.green
        self.view.addSubview(greenBox!)
        //For circle
        greenBox?.layer.cornerRadius = greenRect.width/2
        greenBox?.clipsToBounds = true
        
        
        // Draw a red rectangle
        let redRect = CGRect(x: 100, y: 100, width: 100, height: 100)
        redBox = UIView(frame: redRect)
        redBox?.backgroundColor = UIColor.red
        self.view.addSubview(redBox!)
        redBox?.layer.cornerRadius = redRect.width/2
        redBox?.clipsToBounds = true
        
        // Draw a blue square
        let blueRect = CGRect(x: 200, y: 200, width: 100, height: 100)
        blueBox = UIView(frame: blueRect)
        blueBox?.backgroundColor = UIColor.blue
        self.view.addSubview(blueBox!)
        blueBox?.layer.cornerRadius = blueRect.width/2
        blueBox?.clipsToBounds = true

        // Draw a yellow square
        let yellowRect = CGRect(x: 50, y: 50, width: 100, height: 100)
        yellowBox = UIView(frame: yellowRect)
        yellowBox?.backgroundColor = UIColor.yellow
        self.view.addSubview(yellowBox!)
        yellowBox?.layer.cornerRadius = yellowRect.width/2
        yellowBox?.clipsToBounds = true

        
        animation = UIDynamicAnimator(referenceView: self.view)
        
        //Gravity
        let gravity = UIGravityBehavior(items: [greenBox!,redBox!])
        let direction = CGVector(dx: 0.5, dy: 1)
        gravity.gravityDirection = direction
        let gravity2 = UIGravityBehavior(items: [blueBox!,yellowBox!])
        let direction2 = CGVector(dx: 1, dy: 2)
        gravity2.gravityDirection = direction2
        
        animation?.addBehavior(gravity)
        animation?.addBehavior(gravity2)
        
        //Collision
        let bound = UICollisionBehavior(items: [greenBox!,redBox!,blueBox!,yellowBox!])
        bound.translatesReferenceBoundsIntoBoundary = true
        
        animation?.addBehavior(bound)
        
        //Elasticity
        
        let bounce = UIDynamicItemBehavior(items:[greenBox!,redBox!])
        bounce.elasticity = 1.0
        
        let bounce2 = UIDynamicItemBehavior(items:[blueBox!,yellowBox!])
        bounce2.elasticity = 1.0
        
        animation?.addBehavior(bounce)
        animation?.addBehavior(bounce2)
    
        
        // Do any additional setup after loading the view.
    }


}

