//
//  ForgotPasswordViewController.swift
//  Capstone2
//
//  Created by Jeffrey Voltaire on 4/12/22.
//

import UIKit
import Firebase
import FirebaseAuth

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor.white// for titles, buttons, etc.

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
    @IBAction func ForgotPassword(_ sender: Any) {
        Auth.auth().sendPasswordReset(withEmail: emailTextField.text!){ (error) in
            if error == nil {
                print("SENT...!")
            }else{
                print("FAILED - \(String(describing: error?.localizedDescription))")
            }
        }
    }
    
}
