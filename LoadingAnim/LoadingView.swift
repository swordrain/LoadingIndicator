//
//  LoadingView.swift
//  LoadingAnim
//
//  Created by lianli on 16/12/7.
//  Copyright © 2016年 lianli. All rights reserved.
//

import UIKit
@IBDesignable
class LoadingView: UIView {
    @IBInspectable var progress: CGFloat = 0
    let lineWidth:CGFloat = 10
    let radius:CGFloat = 100
    var label: UILabel?

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let path = UIBezierPath()
        UIColor.purple.setStroke()
        path.lineWidth = lineWidth
        
        path.addArc(withCenter: CGPoint(x:self.bounds.width / CGFloat(2) , y: self.bounds.height / CGFloat(2)), radius: radius, startAngle: 0, endAngle: 2.0 * CGFloat.pi * progress / 100.0 , clockwise: true)
        if label == nil {
            label = UILabel()
            self.addSubview(label!)
            label?.adjustsFontSizeToFitWidth = true
            label?.font = UIFont.boldSystemFont(ofSize: 50)
            
            label?.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
            label?.center = CGPoint(x:self.bounds.width / CGFloat(2) , y: self.bounds.height / CGFloat(2))
            label?.textAlignment = .center
            label?.textColor = UIColor.purple
        }
        label?.text = "\(Int(progress))%"
        
        path.stroke()
    }
 

}
