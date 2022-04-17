//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

class ProjectRefreshControl: UIRefreshControl {
    
    override init() {
        super.init()
        tintColor = .darkGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

