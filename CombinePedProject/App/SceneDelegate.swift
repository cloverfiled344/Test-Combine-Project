//
//  CombinePedProject
//  Copyright (c) 2022 Heads and Hands. All rights reserved.
//


import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator: AppCoordinator = AppCoordinator(navigationController: UINavigationController())

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        coordinator.start()
    }
}

