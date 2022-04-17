//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

class ButtonBuilder: ButtonBuilderType {
    
    struct Style {
        
        static let rightImageEdgeInsets = UIEdgeInsets(top: 4, left: -4, bottom: 4, right: 8)
    }
    
    private var button = UIButton()
    
    func startBuild() -> Self {
        button = UIButton()
        return self
    }
    
    func build() -> UIButton {
        button
    }
    
    func setTitle(_ title: String?) -> Self {
        button.setTitle(title, for: .normal)
        return self
    }
    
    func useAutoLayout() -> Self {
        button.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    func setBackgroudColor(_ color: UIColor?) -> Self {
        button.backgroundColor = color
        return self
    }
    
    func setFont(_ font: UIFont?) -> Self {
        button.titleLabel?.font = font
        return self
    }
    
    func setTextColor(_ color: UIColor?, _ state: UIControl.State) -> Self {
        button.setTitleColor(color, for: state)
        return self
    }
    
    func setImage(_ image: UIImage?, _ state: UIControl.State) -> Self {
        button.setImage(image, for: state)
        return self
    }
    
    func setTitleWithRightImage(_ title: String, _ image: UIImage?) -> Self {
        button.setTitle(title, for: .normal)
        button.setImage(image, for: .normal)
        button.imageEdgeInsets = Style.rightImageEdgeInsets
        button.moveImageToTheRightSide()
        return self
    }
    
    func setBorder(_ width: CGFloat, _ color: UIColor?) -> Self {
        button.layer.borderWidth = width
        button.layer.borderColor = color?.cgColor
        return self
    }
    
    func setCornerRadius(_ radius: CGFloat) -> Self {
        button.clipsToBounds = true
        button.layer.cornerRadius = radius
        return self
    }
    
    func setTitleWithLeftImage(_ title: String?, _ image: UIImage?, _ spacing: CGFloat) -> Self {
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: spacing)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: -spacing)
        button.setTitle(title, for: .normal)
        button.setImage(image, for: .normal)
        button.titleLabel?.sizeToFit()
        return self
    }
    
    func setNumberOfLines(_ number: Int) -> Self {
        button.titleLabel?.numberOfLines = number
        return self
    }
    
    func setAlignment(_ alignment: NSTextAlignment) -> Self {
        button.titleLabel?.textAlignment = alignment
        return self
    }
}
