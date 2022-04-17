//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import UIKit

class LabelBuilder: LabelBuilderType {
    
    private var label = UILabel()
    
    func startBuild() -> Self {
        label = UILabel()
        return self
    }
    
    func build() -> UILabel {
        label
    }
    
    func useAutoLayout() -> Self {
        label.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    func setCustomFont(_ font: UIFont) -> Self {
        label.font = font
        return self
    }
    
    func setTextColor(_ color: UIColor) -> Self {
        label.textColor = color
        return self
    }
    
    func setText(_ text: String) -> Self {
        label.text = text
        return self
    }
    
    func setNumberOfLines(_ number: Int) -> Self {
        label.numberOfLines = number
        return self
    }
    
    func setAlignment(_ alignment: NSTextAlignment) -> Self {
        label.textAlignment = alignment
        return self
    }
    
    func setBakgroundColor(_ color: UIColor?) -> Self {
        label.backgroundColor = color
        return self
    }
}
