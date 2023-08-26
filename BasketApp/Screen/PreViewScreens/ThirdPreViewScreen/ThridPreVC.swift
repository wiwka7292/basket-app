//
//  ViewController.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class ThirdPreViewController: UIViewController {

    var thirdPreView: ThirdPreView { self.view as! ThirdPreView }
    
    override func loadView() {
        view = ThirdPreView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @objc func nextButtonTapped(){
        let fourthPreViewController = FourthPreViewController()
        fourthPreViewController.hidesBottomBarWhenPushed = true
        navigationController?.setViewControllers([fourthPreViewController], animated: true)
    }
}

