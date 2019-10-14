//
//  MAinScreenViewController.swift
//  drawOnImage
//
//  Created by macOS on 10/14/19.
//  Copyright © 2019 macOS. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

    var mode : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func withoutZoomingButtonClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func withZoomingButtonClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ZoomingViewController") as! ZoomingViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }


}
