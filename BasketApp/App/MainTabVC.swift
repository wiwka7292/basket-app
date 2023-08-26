//
//  MainTabVC.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

final class MainTabVC: UITabBarController {
    
    private var teamsVC: TeamsScreenVC = {
        let controller = TeamsScreenVC()
        let selectedIamge = UIImage(systemName: "basketball")
        let tabItem = UITabBarItem(title: "teams", image: selectedIamge, selectedImage: selectedIamge)
        controller.tabBarItem = tabItem
        return controller
    }()
    
    private var headToHeadVC: HeadToHeadVC = {
        let controller = HeadToHeadVC()
        let selectedIamge = UIImage(systemName: "sportscourt")
        let tabItem = UITabBarItem(title: "hh", image: selectedIamge, selectedImage: selectedIamge)
        controller.tabBarItem = tabItem
        return controller
    }()

    private var basicsVC: BasicsVC = {
        let controller = BasicsVC()
        let selectedIamge = UIImage(systemName: "graduationcap")
        let tabItem = UITabBarItem(title: "basics", image: selectedIamge, selectedImage: selectedIamge)
        controller.tabBarItem = tabItem
        return controller
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        
        let teamNC = UINavigationController(rootViewController: teamsVC)
        let headToHeadNC = UINavigationController(rootViewController: headToHeadVC)
        let basicsNC = UINavigationController(rootViewController: basicsVC)
        teamsVC.title = "Teams information"
        headToHeadVC.title = "Head to head"
        basicsVC.title = "Basics"
        teamNC.tabBarItem.title = "teams"
        headToHeadNC.tabBarItem.title = "hh"
        basicsNC.tabBarItem.title = "hh"
        viewControllers = [teamNC, headToHeadNC, basicsNC]
        tabBar.tintColor = .systemIndigo
        tabBar.unselectedItemTintColor = .gray
        tabBar.layer.borderWidth = 1
        tabBar.layer.borderColor = UIColor.systemIndigo.cgColor
        tabBar.layer.cornerRadius = 10
        tabBar.clipsToBounds = true
    }
}

