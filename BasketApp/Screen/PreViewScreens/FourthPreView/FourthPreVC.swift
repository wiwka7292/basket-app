//
//  ViewController.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class FourthPreViewController: UIViewController {

    var fourthPreView: FourthPreView { self.view as! FourthPreView }
    
    override func loadView() {
        view = FourthPreView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @objc func nextButtonTapped(){
        let mainTabVC = MainTabVC()
           let navigationController = UINavigationController(rootViewController: mainTabVC)

           UIApplication.shared.keyWindow?.rootViewController = navigationController
    }
}

