//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit
import Combine

class LaunchScreenViewController: BaseViewController {
    
    // MARK: External Properties
    var coordinator: LaunchScreenCoordinator?
    private let launchScreenView: LaunchScreenView
    
    // MARK: - Private Properties
    private var anyCancellable = Set<AnyCancellable>()
    
    // MARK: - Life cycle
    init(_ launchScreenView: LaunchScreenView) {
        self.launchScreenView = launchScreenView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        view = launchScreenView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    // MARK: - Private methods
    private func configure() {
        setupBindings()
    }
}

// MARK: - Setup Bindings
private extension LaunchScreenViewController {
    
    func setupBindings() {
        setupViewBindings()
    }
    
    func setupViewBindings() {
        launchScreenView.continueButtonTapped.sink { [weak self] _ in
            self?.coordinator?.openWelcomeScreen()
        }.store(in: &anyCancellable)
    }
}
