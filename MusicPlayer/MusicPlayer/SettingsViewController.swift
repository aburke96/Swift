//
//  SettingsViewController.swift
//  MusicPlayer
//
//  Created by Alexandra Burke on 9/19/23.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var lblSliderValue: UILabel!

    
    @IBAction func sldAdjustBrightness(_ sender: UISlider) {
        lblSLiderValue.text = "\(Int(sldSliderValue))"
        
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
