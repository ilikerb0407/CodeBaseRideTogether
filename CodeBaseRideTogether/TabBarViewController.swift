//
//  TabBarViewController.swift
//  CodeBaseRideTogether
//
//  Created by Kai Fu Jhuang on 2025/7/23.
//

import UIKit
import SwiftUI

class TabBarViewController: UITabBarController {

    private let customTabs: [Tabs] = [.journey, .group, .profile]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBar()
        setupViewControllers()
    }
    
    private func setupTabBar() {
        tabBar.layer.masksToBounds = true
        tabBar.isTranslucent = true
        tabBar.tintColor = .systemBlue
        tabBar.unselectedItemTintColor = .systemGray
    }
    
    private func setupViewControllers() {
        let viewControllers = customTabs.map { tab in
            let controller = tab.controller
            controller.tabBarItem = tab.tabBarItem
            return controller
        }
        
        setViewControllers(viewControllers, animated: false)
    }
}

private enum Tabs {
    case journey, group, profile
    
    var controller: UIViewController {
        switch self {
        case .journey:
            return UIHostingController(rootView: JourneyView())
        case .group:
            return UIHostingController(rootView: GroupView())
        case .profile:
            return UIHostingController(rootView: ProfileView())
        }
    }
    
    var tabBarItem: UITabBarItem {
        switch self {
        case .journey:
            return UITabBarItem(
                title: "Journey",
                image: UIImage(systemName: "map"),
                selectedImage: UIImage(systemName: "map.fill")
            )
        case .group:
            return UITabBarItem(
                title: "Group",
                image: UIImage(systemName: "person.3"),
                selectedImage: UIImage(systemName: "person.3.fill")
            )
        case .profile:
            return UITabBarItem(
                title: "Profile",
                image: UIImage(systemName: "person.circle"),
                selectedImage: UIImage(systemName: "person.circle.fill")
            )
        }
    }
}
