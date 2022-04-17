//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import UIKit
import SnapKit
import Combine

final class LaunchScreenView: UIView {
    
    // MARK: - Builder
    private let imageBuilder: ImageViewBuilderType
    private let buttonBuilder: ButtonBuilderType
    
    // MARK: - Publishers
    let continueButtonTapped = PassthroughSubject<Bool, Never>()
    
    // MARK: - UI Components
    private var launchIcon = UIImageView()
    private var continueButton = UIButton()
    
    // MARK: - Init
    init(_ imageBuilder: ImageViewBuilderType,
         _ labelBuilder: ButtonBuilderType) {
        self.imageBuilder = imageBuilder
        self.buttonBuilder = labelBuilder
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Config
    private func configure() {
        buildUIElements()
        setupSubviews()
        setConstraints()
        setupObservers()
    }
    
    private func setupSubviews() {
        addSubview(launchIcon)
        launchIcon.addSubview(continueButton)
    }
    
    private func buildUIElements()  {
        launchIcon = imageBuilder.startBuild()
            .useAutoLayout()
            .setImage(Asset.launchScreen.image)
            .activateUserInteraction()
            .build()
        
        continueButton = buttonBuilder.startBuild()
            .useAutoLayout()
            .setCornerRadius(8.0)
            .setTitle("Начнем!")
            .setBackgroudColor(ColorName.mainBlue.color)
            .build()
    }
    
    private func setConstraints() {
        launchIcon.snp.makeConstraints {
            $0.top.equalTo(layoutMarginsGuide)
            $0.bottom.left.right.equalToSuperview()
        }
        
        continueButton.snp.makeConstraints {
            $0.height.equalTo(44)
            $0.left.right.equalToSuperview().inset(16)
            $0.bottom.equalToSuperview().offset(-40)
        }
    }
    
    private func setupObservers() {
        continueButton.addTarget(self, action: #selector(didTapOnContinueButton), for: .touchUpInside)
    }
}

// MARK: - Taps & Gestures
extension LaunchScreenView {
    @objc private func didTapOnContinueButton() {
        continueButton.pulsate()
        continueButtonTapped.send(continueButton.isEnabled)
    }
}
