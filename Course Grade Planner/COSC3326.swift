//
//  COSC3326.swift
//  Grade Planner
//
//  Created by Alexandra Burke on 9/24/23.
//

import UIKit

class COSC3326: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet weak var lblHomework: UILabel!
    
    @IBOutlet weak var sliderHomework: UISlider!
    
    @IBAction func sliderHomeworkAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblHomework.text = "\(currentValue)%"
        updateGrade()
    }
    
    @IBOutlet weak var lblProject: UILabel!

    @IBOutlet weak var sliderProject: UISlider!
    
    @IBAction func sliderProjectAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblProject.text = "\(currentValue)%"
        updateGrade()
    }
    
    @IBOutlet weak var lblAttendance: UILabel!
    
    @IBOutlet weak var sliderAttendance: UISlider!
    
    @IBAction func sliderAttendanceAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblAttendance.text = "\(currentValue)%"
        updateGrade()
    }
    
    
    @IBOutlet weak var lblFinalGrade: UILabel!
    
    func updateGrade() -> Void {
     
        let hwGrade = sliderHomework.value
        let projectGrade = sliderProject.value
        let attendanceGrade = sliderAttendance.value
        
        let finalGrade = (hwGrade) + (projectGrade) + (attendanceGrade)
        
        if(finalGrade >= 90)
             {
                 lblFinalGrade.text = "\(finalGrade.rounded())%(A)"
             }
             else if(finalGrade >= 80 && finalGrade < 90)
             {
                 lblFinalGrade.text = "\(finalGrade.rounded())%(B)"
             }
             else if(finalGrade >= 70 && finalGrade < 80)
             {
                 lblFinalGrade.text = "\(finalGrade.rounded())%(C)"
             }
             else if(finalGrade >= 60 && finalGrade < 70)
             {
                 lblFinalGrade.text = "\(finalGrade.rounded())%(D)"
             }
             else{
                 lblFinalGrade.text = "\(finalGrade.rounded())%(F)"
             }
        
    }
    
}
