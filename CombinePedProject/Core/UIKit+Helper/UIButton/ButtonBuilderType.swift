//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

protocol ButtonBuilderType {
    func startBuild() -> Self
    func build() -> UIButton
    func setTitle(_ title: String?) -> Self
    func useAutoLayout() -> Self
    func setBackgroudColor(_ color: UIColor?) -> Self
    func setFont(_ font: UIFont?) -> Self
    func setTextColor(_ color: UIColor?, _ state: UIControl.State) -> Self
//    func setStyle(_ ButtonStyle) -> Self
    func setImage(_ image: UIImage?, _ state: UIControl.State) -> Self
    func setTitleWithRightImage(_ title: String, _ image: UIImage?) -> Self
    func setBorder(_ width: CGFloat, _ color: UIColor?) -> Self
    func setCornerRadius(_ radius: CGFloat) -> Self
    func setTitleWithLeftImage(_ title: String?, _ image: UIImage?, _ spacing: CGFloat) -> Self
    func setNumberOfLines(_ number: Int) -> Self
    func setAlignment(_ alignment: NSTextAlignment) -> Self
    func setPulsate() -> Self
}
