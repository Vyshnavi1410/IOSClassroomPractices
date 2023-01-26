//
//  ViewController.swift
//  SamplePracticeApp
//
//  Created by Kattamuri,Vyshnavi on 1/26/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var crs1Outlet: UITextField!
    
    
    @IBOutlet weak var crs2Outlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
        //Read the course1 name and store in a variable
        var course1name = crs1Outlet.text!
        
        //Read the course2 name and store in a variable
        var course2name = crs2Outlet.text!
        
        //Perform string interpolation and assign it to display label (course1 - course2)
        displayLabel.text = "\(course1name) - \(course2name)"
        
        
    }
    
}

