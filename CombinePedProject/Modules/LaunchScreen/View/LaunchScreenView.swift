//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import UIKit
import SnapKit

final class LaunchScreenView: UIView {
    
    // MARK: - Builder
    private let imageBuilder: ImageViewBuilderType
    private let labelBuilder: LabelBuilderType
    
    // MARK: - UI Components
    private var launchIcon = UIImageView()
    
    // MARK: - Init
    init(_ imageBuilder: ImageViewBuilderType,
         _ labelBuilder: LabelBuilderType) {
        self.imageBuilder = imageBuilder
        self.labelBuilder = labelBuilder
        super.init(frame: .zero)
        buildUIElements()
        setupSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Config
    private func setupSubviews() {
        addSubview(launchIcon)
    }
    
    private func buildUIElements()  {
        launchIcon = imageBuilder.startBuild()
            .useAutoLayout()
            .setImage(Asset.launchScreen.image)
            .build()
    }
    
    private func setConstraints() {
        launchIcon.snp.makeConstraints {
            $0.top.equalTo(layoutMarginsGuide)
            $0.bottom.left.right.equalToSuperview()
        }
    }
}

