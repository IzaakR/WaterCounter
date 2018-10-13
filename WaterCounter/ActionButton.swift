//
//  ActionButton.swift
//  WaterCounter
//
//  Created by Rodriguez Isaac on 10/13/18.
//  Copyright © 2018 RodriguezIsaac. All rights reserved.
//

import UIKit
@IBDesignable
class ActionButton: UIButton {

    @IBInspectable var isAddButton: Bool = true
    @IBInspectable var fillColor: UIColor = UIColor.green
    private var halfWidht: CGFloat {
        return bounds.width / 2
    }
    private var halfHeight: CGFloat {
        return bounds.height / 2
    }
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
        
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        let halfPlusWidth = plusWidth / 2
        
        let plusPath = UIBezierPath()
        plusPath.lineWidth = 5.0
        plusPath.move(to: CGPoint(x: halfWidht - halfPlusWidth, y: halfHeight))
        plusPath.addLine(to: CGPoint(x: halfWidht + halfPlusWidth, y: halfHeight))
        
        if isAddButton {
            plusPath.move(to: CGPoint(x: halfWidht, y: halfHeight - halfPlusWidth))
            plusPath.addLine(to: CGPoint(x: halfWidht, y: halfHeight + halfPlusWidth))
        }
        UIColor.white.setStroke()
        plusPath.stroke()
    }
    
    
    
 

}
