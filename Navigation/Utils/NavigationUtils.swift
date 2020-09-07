//
//  NavigationUtils.swift
//  Navigation
//
//  Created by Nick Sinklier on 9/6/20.
//  Copyright © 2020 NorpSwizzler. All rights reserved.
//

import UIKit

public class NavigationUtils {
    func frontViewController() -> UIViewController? {
        guard let rootVC = topNavigationController()?.viewControllers.last else { return nil }
        let frontVC = frontViewController(rootView: rootVC)
        return frontVC
    }
    
    private func frontViewController(rootView: UIViewController) -> UIViewController? {
        if let tabController = rootView as? UITabBarController, let frontVC = tabController.selectedViewController {
            return frontViewController(rootView: frontVC)
        }
        if let navController = rootView as? UINavigationController, let frontVC = navController.viewControllers.last {
            return frontViewController(rootView: frontVC)
        }
        if let frontVC = rootView.presentedViewController {
            return frontViewController(rootView: frontVC)
        }
        return rootView
    }
    
    func topNavigationController() -> UINavigationController? {
        let rootView = UIApplication.shared.windows.last?.rootViewController
        let rootNavigationController = rootView?.navigationController
        return rootNavigationController
    }
}
