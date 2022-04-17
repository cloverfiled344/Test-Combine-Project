//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import UIKit

protocol StackViewBuilderType {
    func startBuild() -> Self
    func build() -> UIStackView
    func setAxis(_ axis: NSLayoutConstraint.Axis) -> Self
    func useAutoLayout() -> Self
    func setDistribution(_ distribution: UIStackView.Distribution) -> Self
    func addArrangedSubviews(_ views: UIView...) -> Self
    func addArrangedSubviews(_ views: [UIView]) -> Self
    func setAlignment(_ alignment: UIStackView.Alignment) -> Self
    func setSpacing(_ spacing: CGFloat) -> Self
    func setCustomSpacing(_ spacing: CGFloat, after view: UIView) -> Self
}
