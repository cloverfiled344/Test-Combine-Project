//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

class LaunchScreenCoordinator: Coordinator {
    
    // MARK: - Builders
    private let imageBuilder = ImageViewBuilder()
    private let labelBuilder = LabelBuilder()
    
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let lauchScreenVC = LaunchScreenViewController(.init(imageBuilder, labelBuilder))
        lauchScreenVC.coordinator = self
        navigationController.pushViewController(lauchScreenVC, animated: false)
        let sceneDelegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
        sceneDelegate?.window?.rootViewController = navigationController
        sceneDelegate?.window?.makeKeyAndVisible()
    }
}
