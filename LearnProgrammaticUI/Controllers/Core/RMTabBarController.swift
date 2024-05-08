//
//  ViewController.swift
//  LearnProgrammaticUI
//
//  Created by Ahmed Kamal on 08/05/2024.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupTabs()
    }
    
    
    private func setupTabs() {
        let charactersVC         = RMCharacterViewController()
        let locationsVC          = RMLocationViewController()
        let episodesVC           = RMEpisodeViewController()
        let settingsVC           = RMSettingsViewController()
        
        let coreVCs: [UIViewController] = [charactersVC, locationsVC, episodesVC, settingsVC]
        
        for vc in coreVCs {
            vc.navigationItem.largeTitleDisplayMode = .automatic
        }
        
        charactersVC.title       = "Characters"
        locationsVC.title        = "Locations"
        episodesVC.title         = "Episodes"
        settingsVC.title         = "Settings"
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        let navBar: [UINavigationController] = [nav1, nav2, nav3, nav4]
        
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person.fill"), tag: 0)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 1)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 2)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 3)
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
        
        for nav in navBar {
            nav.navigationBar.prefersLargeTitles = true
        }
    }
}
