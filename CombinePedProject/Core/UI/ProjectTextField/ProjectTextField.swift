//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

protocol ProjectTextFieldDelegate: AnyObject {
    
}

class ProjectTextField: UITextField {
    
    // MARK: - External properties
    weak var deleteDelegate: ProjectTextFieldDelegate?
    
    // MARK: - Internal properties
    var textPadding: UIEdgeInsets = .zero
    var key: String?
    
    init(textPadding: UIEdgeInsets) {
        super.init(frame: .zero)
        self.textPadding = textPadding
    }
    
    convenience init() {
        let textPadding = UIEdgeInsets(top: 0,
                                       left: 12,
                                       bottom: 16,
                                       right: 0)
        self.init(textPadding: textPadding)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
    
    override func deleteBackward() {
        super.deleteBackward()
        // TODO: Setup delete delegate method
//        deleteDelegate.
    }
}
