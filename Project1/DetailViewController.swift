//
//  DetailViewController.swift
//  Project1
//
//  Created by Erin Moon on 2/28/17.
//  Copyright © 2017 Erin Moon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
