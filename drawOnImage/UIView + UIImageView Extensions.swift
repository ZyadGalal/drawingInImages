//
//  UIView + UIImageView Extensions.swift
//  drawOnImage
//
//  Created by macOS on 10/14/19.
//  Copyright © 2019 macOS. All rights reserved.
//

import UIKit

extension UIView {

  func screenshot() -> UIImage {
    return UIGraphicsImageRenderer(size: bounds.size).image { _ in
      drawHierarchy(in: CGRect(origin: .zero, size: bounds.size), afterScreenUpdates: true)
    }
  }

}
