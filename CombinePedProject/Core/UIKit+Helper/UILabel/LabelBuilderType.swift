//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import UIKit

protocol LabelBuilderType {
    func startBuild() -> Self
    func build() -> UILabel
    func useAutoLayout() -> Self
    func setCustomFont(_ font: UIFont) -> Self
    func setTextColor(_ color: UIColor) -> Self
    func setText(_ text: String) -> Self
    func setNumberOfLines(_ number: Int) -> Self
    func setAlignment(_ alignment: NSTextAlignment) -> Self
//    func setStyle(_ style: LabelStyle) -> Self
    func setBakgroundColor(_ color: UIColor?) -> Self
}
