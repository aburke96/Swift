//
//  COSC4333.swift
//  Grade Planner
//
//  Created by Alexandra Burke on 9/24/23.
//

import UIKit

class COSC4333: UIViewController {

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
    
    @IBOutlet weak var lblQuizzes: UILabel!

    @IBOutlet weak var sliderQuizzes: UISlider!
    
    @IBAction func sliderQuizzesAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblQuizzes.text = "\(currentValue)%"
        updateGrade()
    }
    
    @IBOutlet weak var lblExams: UILabel!
    
    @IBOutlet weak var sliderExams: UISlider!
    
    @IBAction func sliderExamsAction(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        lblExams.text = "\(currentValue)%"
        updateGrade()
    }
    
    
    @IBOutlet weak var lblFinalGrade: UILabel!
    
    func updateGrade() -> Void {
     
        let hwGrade = sliderHomework.value
        let quizzesGrade = sliderQuizzes.value
        let examsGrade = sliderExams.value
        
        let finalGrade = (hwGrade) + (quizzesGrade) + (examsGrade)
        
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
