//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

class StackViewBuilder: StackViewBuilderType {
    
    private var stackView = UIStackView()
    
    func startBuild() -> Self {
        stackView = UIStackView()
        return self
    }
    
    func build() -> UIStackView {
        stackView
    }
    
    func setAxis(_ axis: NSLayoutConstraint.Axis) -> Self {
        stackView.axis = axis
        return self
    }
    
    func useAutoLayout() -> Self {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    func setDistribution(_ distribution: UIStackView.Distribution) -> Self {
        stackView.distribution = distribution
        return self
    }
    
    func addArrangedSubviews(_ views: UIView...) -> Self {
        views.forEach { stackView.addArrangedSubview($0) }
        return self
    }
    
    func addArrangedSubviews(_ views: [UIView]) -> Self {
        views.forEach { stackView.addArrangedSubview($0) }
        return self
    }
    
    func setAlignment(_ alignment: UIStackView.Alignment) -> Self {
        stackView.alignment = alignment
        return self
    }
    
    func setSpacing(_ spacing: CGFloat) -> Self {
        stackView.spacing = spacing
        return self
    }
    
    func setCustomSpacing(_ spacing: CGFloat, after view: UIView) -> Self {
        stackView.setCustomSpacing(spacing, after: view)
        return self
    }
}
