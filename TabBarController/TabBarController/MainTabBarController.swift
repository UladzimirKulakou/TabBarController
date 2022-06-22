//
//  MainTabBarController.swift
//  TabBarController
//
//  Created by Uladzimir Kulakou on 6/22/22.
//

import Foundation
import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
    }
    
    private func generateTabBar() {
        viewControllers = [
        generateVC(viewController: HomeViewController(),
                   title: "Home",
                   image: UIImage(systemName: "house.fill"))]
    }
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
}
