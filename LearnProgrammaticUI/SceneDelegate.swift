//
//  SceneDelegate.swift
//  LearnProgrammaticUI
//
//  Created by Ahmed Kamal on 03/05/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        
        
        
        //makes the window fill the whole screen
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        
        //the scene containing the window
        window?.windowScene = windowScene
        
        //the window needs a viewcontroller to show
        window?.rootViewController = createTabBar()
        
        //makes the window visible
        window?.makeKeyAndVisible()
    }
    
    func createIncomeNC() -> UINavigationController {
        let incomeVC = IncomeVC()
        incomeVC.title = "Income"
        incomeVC.tabBarItem = UITabBarItem(title: "Income", image: UIImage(systemName: "square.and.arrow.down"), tag: 0)
        return UINavigationController(rootViewController: incomeVC)
    }
    
    
    func createExpenseNC() -> UINavigationController {
        let expensesVC = ExpensesVC()
        expensesVC.title = "Expenses"
        expensesVC.tabBarItem = (UITabBarItem(title: "Expenses", image: UIImage(systemName: "square.and.arrow.up"), tag: 1))
        return UINavigationController(rootViewController: expensesVC)
    }
    
    
    func createTabBar () -> UITabBarController {
        
        let tabBar = UITabBarController()
        
        UITabBar.appearance().tintColor = .systemBlue
        tabBar.viewControllers = [
        createIncomeNC(),
        createExpenseNC()
        ]
        return tabBar
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

