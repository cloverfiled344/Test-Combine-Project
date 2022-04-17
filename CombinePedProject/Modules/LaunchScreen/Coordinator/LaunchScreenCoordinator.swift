//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

class LaunchScreenCoordinator: Coordinator {
    
    // MARK: - Builders
    private let imageBuilder = ImageViewBuilder()
    private let buttonBuilder = ButtonBuilder()
    private let labelBuilder = LabelBuilder()
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let lauchScreenVC = LaunchScreenViewController(.init(imageBuilder, buttonBuilder))
        lauchScreenVC.coordinator = self
        navigationController.pushViewController(lauchScreenVC, animated: false)
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
        sceneDelegate?.window?.rootViewController = navigationController
        sceneDelegate?.window?.makeKeyAndVisible()
    }
    
    func openWelcomeScreen() {
        let vc = UIViewController()
        vc.view.backgroundColor = .green
        navigationController.pushViewController(vc, animated: true)
    }
}
