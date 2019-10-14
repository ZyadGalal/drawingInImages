//
//  DisplayViewController.swift
//  drawOnImage
//
//  Created by macOS on 10/14/19.
//  Copyright © 2019 macOS. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var image : UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image!
    }
    



}
