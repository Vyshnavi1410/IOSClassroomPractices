//
//  LoginScreenSegueViewController.swift
//  Kattamuri_ViewController
//
//  Created by Kattamuri,Vyshnavi on 4/3/23.
//

import UIKit

class LoginScreenSegueViewController: UIViewController {

    
    
    @IBOutlet weak var UserNameOutlet: UITextField!
    
    
    
    @IBOutlet weak var ImageDisplay: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func UserNameEntered(_ sender: UITextField) {
        var username = UserNameOutlet.text
        if username == "birds"{
            ImageDisplay.image = UIImage(named:"parrot")
        }
        else if username == "hero"{
            ImageDisplay.image = UIImage(named:"actor1")
        }else if username == "heroin"{
            ImageDisplay.image = UIImage(named:"heroin")
        }else if username == "cricketer"{
            ImageDisplay.image = UIImage(named:"cricketer3")
        }
        else{
            ImageDisplay.image = UIImage(named:"noresults")
        }
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
