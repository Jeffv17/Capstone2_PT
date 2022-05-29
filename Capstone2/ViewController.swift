//
//  ViewController.swift
//  SeniorCapstone2
//
//  Created by Tomiwa Babalola on 2/28/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpElements()
        self.navigationController?.navigationBar.tintColor = UIColor.white// for titles, buttons, etc.

    }
    func setUpElements() {
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleHollowButton(loginButton)
    }


}

