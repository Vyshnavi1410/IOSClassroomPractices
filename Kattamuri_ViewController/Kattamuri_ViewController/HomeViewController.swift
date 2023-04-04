//
//  ViewController.swift
//  Kattamuri_ViewController
//
//  Created by Kattamuri,Vyshnavi on 4/3/23.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var UserNameOutlet: UITextField!
    
    
    @IBOutlet weak var PasswordOutlet: UITextField!
    
    
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginButton.isEnabled = false
    }

    @IBAction func passwordEntered(_ sender: UITextField) {
        let Text = PasswordOutlet.text
        if Text == "password"{
            self.loginButton.isEnabled = true
        } else {
            loginButton.isEnabled = false
            }
    }
    
    
    
    @IBAction func LoginPressed(_ sender: UIButton) {
//        performSegue(withIdentifier: "LoginScreenSegue", sender: sender)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LoginScreenSegue"{
            let destination = segue.destination as? LoginScreenSegueViewController
        }
    }

}

