//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

protocol TextFieldBuilderType {
    func startBuild() -> Self
    func build() -> ProjectTextField
    func setPlaceholder(_ placeholder: String) -> Self
    func useAutoLayout() -> Self
    func setText(_ text: String) -> Self
    func setBorderStyle(_ style: UITextField.BorderStyle) -> Self
    func setDelegate(_ delegate: UITextFieldDelegate) -> Self
    func setFont(_ font: UIFont?) -> Self
//    func setStyle(_ style: TextFieldStyle) -> Self
    func setKeyboardType(_ type: UIKeyboardType) -> Self
    func setUserInteraction(_ state: Bool) -> Self
    func setPadding(_ inset: UIEdgeInsets) -> Self
    func subscribeToDeleteAction(_ delegate: ProjectTextFieldDelegate) -> Self
}
