//
//  TeamsScreenVC.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class TeamsScreenVC: UIViewController {
    
    var teamsScreenView: TeamsScreenView { self.view as! TeamsScreenView }
    var didCallFunction = false
    
    override func loadView() {
        view = TeamsScreenView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !UserDefaults.standard.bool(forKey: "instructionShown332") {
            showPreViews()
            UserDefaults.standard.set(true, forKey: "instructionShown332")
        }
    }
    
    func showPreViews(){
        let controller = FirstPreViewController()
        controller.hidesBottomBarWhenPushed = true
        navigationController?.setViewControllers([controller], animated: false)
    }
}

