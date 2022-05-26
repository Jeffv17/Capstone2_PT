//
//  HomeViewController.swift
//  SeniorCapstone2
//
//  Created by Jeffrey Voltaire on 2/28/22.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    @IBOutlet weak var antiguaHours: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationItem.leftBarButtonItem?.isEnabled = false


        // Do any additional setup after loading the view.
    }
    
    @IBAction func antiguaTapped(_ sender: Any) {
        UIApplication.shared.open(URL(string:"https://calendly.com/jeffreyv300-courseconnect/antigua-office-hours")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func signOut(_ sender: Any) {
        
         // 1
        guard Auth.auth().currentUser != nil else { return }
        
           // 4
           do {
             try Auth.auth().signOut()
             self.navigationController?.popToRootViewController(animated: true)
           } catch let error {
             print("Auth sign out failed: \(error)")
           }
         }
    }
   
