//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func moveImageToTheRightSide() {
        transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        titleLabel?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        imageView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
    }
}
