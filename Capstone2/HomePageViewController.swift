//
//  HomeViewController.swift
//  SeniorCapstone2
//
//  Created by Jeffrey Voltaire on 2/28/22.
//

import UIKit
import Firebase

class HomePageViewController: UIViewController {

    @IBOutlet var Avatar: UIImageView!
    @IBOutlet var backButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.isEnabled = false
        self.navigationController?.navigationBar.tintColor = UIColor.white// for titles, buttons, etc.
        let attrs = [
            NSAttributedString.Key.foregroundColor: UIColor.red,
            NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 66)!
        ]

        UINavigationBar.appearance().titleTextAttributes = attrs


        // Do any additional setup after loading the view.
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
   
