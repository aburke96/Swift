//
//  MusicViewController.swift
//  MusicPlayer
//
//  Created by Alexandra Burke on 9/14/23.
//
import AVFoundation
import UIKit

class Music: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let songPath = Bundle.main.path(forResource: "song", ofType: "m4a")
        
        do {
            // audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: songPath!))
            
      //      audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: songPath!))
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL(filePath: songPath!), fileTypeHint: AVFileType.m4a.rawValue)
        }
        
        catch
        {
            print(error)
        }
    }
    
        
    @IBAction func segPlayStop(_ sender: UISegmentedControl) {
        
        if segValue.selectedSegmentIndex == 0 {
            audioPlayer.play
        }
        else {
            audioPlayer.stop()
        }
    }

    
    @IBAction func sldVolumeControl(_ sender: UISlider) {
    }
    
    
    @IBOutlet weak var lblSlider: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
