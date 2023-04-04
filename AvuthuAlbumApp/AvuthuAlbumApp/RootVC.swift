//
//  RootVC.swift
//  AvuthuAlbumApp
//
//  Created by Avuthu,Manisha on 3/29/23.
//

import UIKit

class RootVC: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var loginBTN: UIButton!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.usernameTF.text = ""
        self.passwordTF.text = ""
        self.passwordTF.isEnabled = false
        self.loginBTN.isEnabled = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func enablePassword(_ sender: UITextField) {
        guard let Text = self.usernameTF.text,!Text.isEmpty, Text == "admin" else {return}
        AppConstants.username = Text
        self.passwordTF.isEnabled = true
        
    }
    
    
    @IBAction func enableloginBTN(_ sender: UITextField) {
        guard let  Text = self.passwordTF.text,!Text.isEmpty, Text == "password" else {
            return
            
        }
        self.loginBTN.isEnabled = true
    }
    
    @IBAction func login(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showAlbum", sender: sender)
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
