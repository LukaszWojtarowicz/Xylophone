

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    let arrayOfSounds = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
       let selectedSound: String = arrayOfSounds[sender.tag-1] 
       playSound(selectedSound) // call func playSound with arg selectedSound - correct for each button
     
    }
    
    func playSound(_ selectedSound: String) {
        
        let soundURL = Bundle.main.url(forResource: selectedSound, withExtension: "wav") //set url of sound resource which needed ( 1 or 2 or...)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }

}

