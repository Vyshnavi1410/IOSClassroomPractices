//
//  DetailsViewController.swift
//  TableViewDemo
//
//  Created by Kattamuri,Vyshnavi on 4/13/23.
//

import UIKit

class DetailsViewController: UIViewController {

    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var product : Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        descriptionLabel.text = "The product \((product?.prodName)!) is of \((product?.prodCategory)!) category"
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

}
