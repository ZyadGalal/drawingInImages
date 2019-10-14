//
//  ViewController.swift
//  drawOnImage
//
//  Created by macOS on 10/14/19.
//  Copyright © 2019 macOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = event?.allTouches?.first
        if let touchPoint = touch?.location(in: self.imageView) {
            drawCircle(point: touchPoint)
        }
    }
    @IBAction func clearButtonClicked(_ sender: Any) {
        removeLastPoint()
    }
    @IBAction func showButtonClicked(_ sender: Any) {
        let savedImage = imageView.screenshot()
        let vc = storyboard?.instantiateViewController(withIdentifier: "DisplayViewController") as! DisplayViewController
        vc.image = savedImage
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func drawCircle(point: CGPoint) {

        let circlePath = UIBezierPath(arcCenter: point, radius: 20, startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2.0), clockwise: true)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = circlePath.cgPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = UIColor.yellow.cgColor
        shapeLayer.borderWidth = 3.0
        self.imageView.layer.addSublayer(shapeLayer)
    }
    func removeLastPoint (){
        if let subLayers = self.imageView.layer.sublayers?.last {
                subLayers.removeFromSuperlayer()
        }
    }

}



