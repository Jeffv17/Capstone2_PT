//
//  ViewController2.swift
//  Capstone2
//
//  Created by Tomiwa Babalola on 4/25/22.
//

import AVKit
import AVFoundation
import UIKit

class BehavioralTreatment: UIViewController {
    
    @IBOutlet weak var watchVideo: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }

    @IBAction func videoTapped(_ sender: Any) {
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "adhd", ofType: "mp4")!))
                let vc = AVPlayerViewController()
                vc.player = player
                present(vc, animated: true)
    }
    
    
}

