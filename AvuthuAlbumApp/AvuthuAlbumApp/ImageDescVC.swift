//
//  ImageDescVC.swift
//  AvuthuAlbumApp
//
//  Created by Avuthu,Manisha on 3/29/23.
//

import UIKit

class ImageDescVC: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var descTV: UITextView!
    
    var photTag: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadImg(AppConstants.vehicles[photTag!])
        imageView.layer.cornerRadius = 20
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 2.0
        
        imageView.layer.borderColor = UIColor.darkGray.cgColor
        
        let swipeTop = UISwipeGestureRecognizer(target: self, action: #selector(swipeGes))
        swipeTop.direction = .up
        imageView.addGestureRecognizer(swipeTop)
        
        let swipeBottom = UISwipeGestureRecognizer(target: self, action: #selector(swipeGes))
        swipeBottom.direction = .down
        imageView.addGestureRecognizer(swipeBottom)
        
        imageView.isUserInteractionEnabled = true
        
        
    }
    

    func loadImg(_ item:(img:String,dsc:String)) {
        self.imageView.image = UIImage(named: item.img)
        self.descTV.text = item.dsc
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @objc func swipeGes(sender: UISwipeGestureRecognizer) {
        if sender.direction == .up {
            imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
        } else if sender.direction == .down {
            imageView.transform = .identity
        }
    }

}
