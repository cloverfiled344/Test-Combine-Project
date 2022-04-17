//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

class ImageViewBuilder: ImageViewBuilderType {
    
    private var imageView = UIImageView()
    
    func startBuild() -> Self {
        imageView = UIImageView()
        return self
    }
    
    func build() -> UIImageView {
        imageView
    }
    
    func useAutoLayout() -> Self {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    func setBackgroundColor(_ color: UIColor?) -> Self {
        imageView.backgroundColor = color
        return self
    }
    
    func setCornerRadius(_ radius: CGFloat) -> Self {
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = radius
        return self
    }
    
    func setContentMode(_ contentMode: UIView.ContentMode) -> Self {
        imageView.contentMode = contentMode
        return self
    }
    
    func setImage(_ image: UIImage?) -> Self {
        imageView.image = image
        return self
    }
    
    func setTintColor(_ color: UIColor) -> Self {
        imageView.image = imageView.image?.withTintColor(color)
        return self
    }
    
    func roundCorners(_ corners: UIRectCorner, _ radius: CGFloat) -> Self {
        imageView.roundCorners(corners: corners, radius: radius)
        return self
    }
    
    func activateUserInteraction() -> Self {
        imageView.isUserInteractionEnabled = true
        return self
    }
    
    func setMaskedCorners(_ maskedCorners: CACornerMask) -> Self {
        imageView.layer.maskedCorners = maskedCorners
        return self
    }
}
