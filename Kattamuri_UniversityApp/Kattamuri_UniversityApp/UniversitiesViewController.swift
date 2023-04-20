//
//  ViewController.swift
//  Kattamuri_UniversityApp
//
//  Created by Kattamuri,Vyshnavi on 4/18/23.
//

import UIKit

class UniversitiesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView : UITableView,numberOfRowsInSection section: Int)->Int {
        return domains.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        var domainCell = universitiesTableView.dequeueReusableCell(withIdentifier: "domainCell", for: indexPath)
        
        domainCell.textLabel?.text = domains[indexPath.row].domain
        return domainCell
    }
    
    var isDomain = false
    var domainFound = Universities()
    var domainArray = domains
    
    @IBOutlet weak var universitiesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        universitiesTableView.delegate = self
        universitiesTableView.dataSource = self
        
        
    }

    func 
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "listsSegue"{
            let destination = segue.destination as! UniversityListViewController
            
            destination.universityListTableView = domainArray.
        }
    }

}

