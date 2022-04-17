//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import UIKit

class TextFieldBuilder: TextFieldBuilderType {
    
    private var textField = ProjectTextField()
    
    func startBuild() -> Self {
        textField = ProjectTextField()
        return self
    }
    
    func build() -> ProjectTextField {
        textField
    }
    
    func setPlaceholder(_ placeholder: String) -> Self {
        textField.placeholder = placeholder
        return self
    }
    
    func useAutoLayout() -> Self {
        textField.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    func setText(_ text: String) -> Self {
        textField.text = text
        return self
    }
    
    func setBorderStyle(_ style: UITextField.BorderStyle) -> Self {
        textField.borderStyle = style
        return self
    }
    
    func setDelegate(_ delegate: UITextFieldDelegate) -> Self {
        textField.delegate = delegate
        return self
    }
    
    func setFont(_ font: UIFont?) -> Self {
        textField.font = font
        return self
    }
    
    func setKeyboardType(_ type: UIKeyboardType) -> Self {
        textField.keyboardType = type
        return self
    }
    
    func setUserInteraction(_ state: Bool) -> Self {
        textField.isUserInteractionEnabled = state
        return self
    }
    
    func setPadding(_ inset: UIEdgeInsets) -> Self {
        textField.textPadding = inset
        return self
    }
    
    func subscribeToDeleteAction(_ delegate: ProjectTextFieldDelegate) -> Self {
        textField.deleteDelegate = delegate
        return self
    }
}
