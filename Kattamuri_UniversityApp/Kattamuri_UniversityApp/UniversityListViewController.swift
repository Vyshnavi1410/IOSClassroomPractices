//
//  UniversityListViewController.swift
//  Kattamuri_UniversityApp
//
//  Created by Kattamuri,Vyshnavi on 4/18/23.
//

import UIKit


var universityObj = Universities()

class UniversityListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = domain1.list_Array.count
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var listCell = universityListTableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        
        listCell.textLabel?.text =
    }
    
    
    @IBOutlet weak var universityListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        universityListTableView.delegate = self
        universityListTableView.dataSource = self
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
