//
//  CounterView.swift
//  WaterCounter
//
//  Created by Rodriguez Isaac on 10/13/18.
//  Copyright © 2018 RodriguezIsaac. All rights reserved.
//

import UIKit
@IBDesignable
class CounterView: UIView {
    @IBInspectable var counterColor: UIColor = UIColor.orange
    private struct Constans {
        static let numberOfGlases = 8
    }
     @IBInspectable var counter: Int = 0 {
        didSet{
            if counter <= Constans.numberOfGlases {
                setNeedsDisplay()
            }
        }
    }
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        let radius: CGFloat = max(bounds.width, bounds.width)
        let startAngle: CGFloat = 3 * .pi / 4
        let endAngle: CGFloat = .pi / 4
        let path = UIBezierPath(arcCenter: center, radius: radius/2 - 76/2, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        path.lineWidth = 76
        counterColor.setStroke()
        path.stroke()
        let angleDifference: CGFloat = 2 * .pi - startAngle + endAngle
        let arcLengthPerGlass = angleDifference / CGFloat(Constans.numberOfGlases)
        let outLineEndAngle = arcLengthPerGlass * CGFloat(counter) + startAngle
        let outLinePath = UIBezierPath(arcCenter: center, radius: bounds.width/2 - 4, startAngle: startAngle, endAngle: outLineEndAngle, clockwise: true)
        outLinePath.addArc(withCenter: center, radius: bounds.width/2 - 76 + 4, startAngle: outLineEndAngle, endAngle: startAngle, clockwise: false)
        outLinePath.close()
        UIColor.blue.setStroke()
        outLinePath.lineWidth = 5.0
        outLinePath.stroke()
    }
 

}
