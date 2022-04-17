//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

class ViewBuilder: ViewBuilderType {
    
    private var view = UIView()
    
    func startBuild() -> Self {
        view = UIView()
        return self
    }
    
    func build() -> UIView {
        view
    }
    
    func useAutoLayout() -> Self {
        view.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    func setBackgroundColor(_ color: UIColor?) -> Self {
        view.backgroundColor = color
        return self
    }
    
    func setCornerRadius(_ radius: CGFloat) -> Self {
        view.clipsToBounds = true
        view.layer.cornerRadius = radius
        return self
    }
    
    func setBorder(width: CGFloat, color: UIColor) -> Self {
        view.layer.borderWidth = width
        view.layer.borderColor = color.cgColor
        return self
    }
    
    func addSubviews(_ views: UIView...) -> Self {
        views.forEach { view.addSubview($0) }
        return self
    }
}
