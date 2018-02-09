//
//  GradientView.swift
//  SmackDat
//
//  Created by Minami on 2/9/18.
//  Copyright © 2018 Minami. All rights reserved.
//

import UIKit

@IBDesignable

class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }

    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradentLayer = CAGradientLayer()
        gradentLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradentLayer.startPoint = CGPoint(x: 0, y: 0)
        gradentLayer.endPoint = CGPoint(x: 1, y: 1)
        gradentLayer.frame = self.bounds
        self.layer.insertSublayer(gradentLayer, at: 0)
    }
    
}
