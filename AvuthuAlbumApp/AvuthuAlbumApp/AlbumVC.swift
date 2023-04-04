//
//  AlbumVC.swift
//  AvuthuAlbumApp
//
//  Created by Avuthu,Manisha on 3/29/23.
//

import UIKit
import AudioToolbox

class AlbumVC: UIViewController {
    
    var tag: Int?
    
    let sound: SystemSoundID = 1103
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var contentView: UIView!
    
    var pictureDescription: String = ""
    
    @IBOutlet var vehicles: [PhotoView]! {
        didSet {
            for i in 0..<self.vehicles.count {
                self.loadItem(self.vehicles[i], AppConstants.vehicles[i])
            }
        }
    }
    
    func loadLikeSymbol(_ view: PhotoView,_ item: (imageview: String, descName: String)) {
        //view.likeLBL.text = "❤️"
        view.doubleTapGesture()
    }
    
    func loadItem(_ view: PhotoView, _ item:(imagebrand:String,descname:String)) {
        view.imageView.image = UIImage(named: item.imagebrand)
        
    }
    
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "imageDeets" {
           guard let destVc = segue.destination as? ImageDescVC else {
               return
               
           }
           destVc.photTag = sender as? Int
       }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0..<vehicles.count {
            let holdLong = UILongPressGestureRecognizer(target: self, action: #selector(imageTapped(_:)))
            self.vehicles[i].addGestureRecognizer(holdLong)
            let doubleClick = UITapGestureRecognizer(target: self, action: #selector(doubleTapGesture))
            doubleClick.numberOfTapsRequired = 2
            self.vehicles[i].addGestureRecognizer(doubleClick)
            
        }
        
    }
    
    @objc func imageTapped(_ sender: UILongPressGestureRecognizer) {
        AudioServicesPlaySystemSound(sound)
        guard let MD = sender.view else {
            return
            
        }
        tag = MD.tag
        performSegue(withIdentifier: "imageDeets", sender: tag)
    }
   

    
    @objc func pictureTouch(tapGestureRecognizer: UITapGestureRecognizer) {
        var x = tapGestureRecognizer.view!.tag
        }
    
   
    
    @objc func doubleTapGesture(_ sender: UITapGestureRecognizer) {
        AudioServicesPlaySystemSound(sound)
        guard let tagNumber = sender.view else {
            return
            
        }
        var  likeTag = tagNumber.tag
        self.loadLikeSymbol(self.vehicles[likeTag], AppConstants.vehicles[likeTag])
       
    }


}

