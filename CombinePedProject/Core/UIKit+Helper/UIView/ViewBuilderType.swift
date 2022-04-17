//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

protocol ViewBuilderType {
    func startBuild() -> Self
    func build() -> UIView
    func useAutoLayout() -> Self
    func setBackgroundColor(_ color: UIColor?) -> Self
//    func setStyle(_ style: ViewStyle) -> Self
    func setCornerRadius(_ radius: CGFloat) -> Self
    func setBorder(width: CGFloat, color: UIColor) -> Self
    func addSubviews(_ views: UIView...) -> Self
}
