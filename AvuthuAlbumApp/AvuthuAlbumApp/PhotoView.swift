//
//  PhotoView.swift
//  AvuthuAlbumApp
//
//  Created by Avuthu,Manisha on 3/29/23.
//

import UIKit

class PhotoView: UIView {
    

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var likeLBL: UILabel!
    
    
    var imageVision = false
    
    override init(frame:CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setUp()
    }
    
    private func setUp() {
 
        let viewFromXib = Bundle.main.loadNibNamed("PhotoView", owner: self)![0] as! UIView
        viewFromXib.frame = self.bounds
        self.addSubview(viewFromXib)
        imageView.layer.cornerRadius = 10
        imageView.layer.borderWidth = 2.0
        imageView.layer.masksToBounds = true
        imageView.layer.borderColor = UIColor.darkGray.cgColor
        
    }
    
    func tapFunc() {
        let doubleClick = UITapGestureRecognizer(target: self, action: #selector(doubleTapGesture))
         doubleClick.numberOfTapsRequired = 2
        self.imageView.addGestureRecognizer(doubleClick)
    }
    
   @objc func press() {
       let longHold = UILongPressGestureRecognizer(target: self, action: #selector(AlbumVC.imageTapped(_:)))

       self.imageView.addGestureRecognizer(longHold)
    }


    
    @objc func doubleTapGesture() {
        imageVision = !imageVision
        likeLBL.isHidden = !imageVision
        self.likeLBL.text = "❤️"
       
    }
    
    @objc func imageTap(tapGestureRecognizer: UITapGestureRecognizer) {
        let tappedPicture = tapGestureRecognizer.view as! UIImageView
        let viewFromXib = Bundle.main.loadNibNamed("PhotoView", owner: self)![0] as! UIView
        viewFromXib.frame = self.bounds
        self.addSubview(viewFromXib)

    }


}
