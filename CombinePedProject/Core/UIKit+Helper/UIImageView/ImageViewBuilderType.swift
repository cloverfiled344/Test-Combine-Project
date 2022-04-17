//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

protocol ImageViewBuilderType {
    func startBuild() -> Self
    func build() -> UIImageView
    func useAutoLayout() -> Self
    func setBackgroundColor(_ color: UIColor?) -> Self
//    func setStyle(_ style: ImageViewStyle) -> Self
    func setCornerRadius(_ radius: CGFloat) -> Self
    func setContentMode(_ contentMode: UIImageView.ContentMode) -> Self
    func setImage(_ image: UIImage?) -> Self
    func setTintColor(_ color: UIColor) -> Self
    func roundCorners(_ corners: UIRectCorner, _ radius: CGFloat) -> Self
    func activateUserInteraction() -> Self
    func setMaskedCorners(_ maskedCorners: CACornerMask) -> Self
}
