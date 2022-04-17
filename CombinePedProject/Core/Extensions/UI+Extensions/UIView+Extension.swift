//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: .init(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func pulsate() {
        let pulsate = CASpringAnimation(keyPath: "transform.scale")
        pulsate.duration = 0.5
        pulsate.repeatCount = 0
        pulsate.autoreverses = false
        pulsate.fromValue = 0.94
        pulsate.toValue = 0.99
        pulsate.autoreverses = false
        pulsate.initialVelocity = 0
        pulsate.damping = 1
        layer.add(pulsate, forKey: nil)
    }
}
