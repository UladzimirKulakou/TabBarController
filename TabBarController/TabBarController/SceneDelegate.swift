//
//  SceneDelegate.swift
//  TabBarController
//
//  Created by Uladzimir Kulakou on 6/22/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScen = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScen)
        window?.makeKeyAndVisible()
        window?.rootViewController = MainTabBarController()
    }

  

}

