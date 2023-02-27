//
//  ViewController.swift
//  PracticeDemo
//
//  Created by Kattamuri,Vyshnavi on 2/27/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageName: UIImageView!
    
    @IBOutlet weak var Cost: UILabel!
    
    @IBOutlet weak var LabelName: UILabel!
    
    
    
    @IBOutlet weak var Description: UITextView!
    var img : UIImage = UIImage(named: "Icecream") ?? UIImage()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func buyNow(_ sender: UIButton) {
        ImageName.image = img
        Cost.text = "40"
        LabelName.text = "Icecreams"
        Description.text = """
        *************
        *************
    """
        
        
    }
}

