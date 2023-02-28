//
//  ViewController.swift
//  Kattamuri_Assignment01
//
//  Created by Kattamuri,Vyshnavi on 1/31/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameOutlet: UITextField!
    
    
    @IBOutlet weak var lastNameOutlet: UITextField!
    
    
    @IBOutlet weak var yearOutlet: UITextField!
    
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    
    
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SubmitBTN(_ sender: UIButton) {
        
        //displaying Details Section
        detailsLabel.text = "Details"
        
        //displaying the full name
        var lastName = lastNameOutlet.text!
        var firstName = firstNameOutlet.text!
        fullNameLabel.text = "Full Name : \(lastName) \(firstName)"
        
        //displaying the initials of lastName and firstName
        var lastNameInitial = lastName.first!
        var firstNameInitial = firstName.first!
        initialsLabel.text = "Initials : \(lastNameInitial) \(firstNameInitial)"
        
        //Caluculating the age
        let birthYear = (yearOutlet.text)!
        let yearOfBirth = Int(birthYear)!
        let currentdate = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year], from: currentdate)
        let year = components.year!
        let age = year - yearOfBirth
        ageLabel.text = "Age : \(age)"
        
        
    }
    

    @IBAction func ResetBTN(_ sender: UIButton) {
        firstNameOutlet.text = " "
        lastNameOutlet.text = " "
        yearOutlet.text = " "
        detailsLabel.text = " "
        fullNameLabel.text = " "
        initialsLabel.text = " "
        ageLabel.text = " "
    }
    
}

