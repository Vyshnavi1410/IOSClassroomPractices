//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Kattamuri,Vyshnavi on 4/13/23.
//

import UIKit

class Product{
    var prodName : String?
    var prodCategory : String?
    
    init(prodName: String, prodCategory: String) {
        self.prodName = prodName
        self.prodCategory = prodCategory
    }
}




class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return the number of rows.In other words the number of products
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //create a cell
        var myCell = tableViewOutlet.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //populate a cell
        myCell.textLabel?.text = products[indexPath.row].prodName
        
        //return a cell
        return myCell
    }
    

    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewOutlet.delegate = self;
        tableViewOutlet.dataSource = self;
        
        let p1 = Product(prodName: "MacBook air", prodCategory: "Laptop")
        products.append(p1)
        let p2 = Product(prodName: "Iphone", prodCategory:"Phone")
        products.append(p2)
        let p3 = Product(prodName: "AirPods", prodCategory: "Accessories")
        products.append(p3)
        let p4 = Product(prodName: "IWatch", prodCategory: "Watches")
        products.append(p4)
        let p5 = Product(prodName: "Samsung", prodCategory: "Android Phones")
        products.append(p5)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "detailsSegue"{
            let destination = segue.destination as! DetailsViewController
            destination.product = products[(tableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }
}

