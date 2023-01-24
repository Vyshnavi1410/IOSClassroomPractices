//
//  ViewController.swift
//  HelloApp
//
//  Created by Kattamuri,Vyshnavi on 1/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameInputOutlet: UITextField!
    
    
    @IBOutlet weak var displayLabelOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        //Read the Input and store it (assign it to a variable).
        var input = nameInputOutlet.text!
        
        //Perform String Interpolation with "Hello, name!" and assign it to display label
        displayLabelOutlet.text = "Hello, \(input)!"
        
    }
    
}

