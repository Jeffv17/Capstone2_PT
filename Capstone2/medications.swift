//
//  medications.swift
//  Capstone2
//
//  Created by Jeffrey Voltaire on 5/12/22.
//

import AVKit
import AVFoundation
import UIKit

class medications: UIViewController {

    @IBOutlet weak var watchVideo: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

    }
    
    @IBAction func videoTapped(_ sender: Any) {
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "medications:stimulants", ofType: "mp4")!))
                        let vc = AVPlayerViewController()
                        vc.player = player
                        present(vc, animated: true)
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
