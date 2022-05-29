//
//  ProfileViewController.swift
//  Capstone2
//
//  Created by Tomiwa Babalola on 4/13/22.
//

import UIKit
import SwiftUI

class ProfileViewController: UIViewController {


    @IBOutlet var profile: UIButton!
    
    
  
    @IBOutlet var avatar4: UIButton!
    @IBOutlet var avatar3: UIButton!
    @IBOutlet var avatar2: UIButton!
    @IBOutlet var avatar1: UIButton!
    
    @IBAction func a1(_ sender: UIButton) {
            profile.setBackgroundImage(UIImage(named: "avatar-pfp-1.jpeg"), for: .normal)
       
        
    }
    @IBAction func a2(_ sender: Any) {
        profile.setBackgroundImage(UIImage(named: "wolf"), for: .normal)
        
    }
    @IBAction func a3(_ sender: Any) {
        profile.setBackgroundImage(UIImage(named: "rick"), for: .normal)
    }
    @IBAction func a4(_ sender: Any) {
        profile.setBackgroundImage(UIImage(named: "pain"), for: .normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.white// for titles, buttons, etc.

        //setBackgroundImage(UIImage(named: "avatar-pfp-1.jpeg"), for: .normal)
        // Do any additional setup after loading the view.
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
