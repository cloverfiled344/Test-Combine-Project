//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let launchCoordinator = LaunchScreenCoordinator(navigationController: navigationController)
        childCoordinators.append(launchCoordinator)
        launchCoordinator.start()
    }
}
