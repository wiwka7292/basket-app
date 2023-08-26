//
//  ViewController.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class SecondPreViewController: UIViewController {

    var secondPreView: SecondPreView { self.view as! SecondPreView }
    
    override func loadView() {
        view = SecondPreView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @objc func nextButtonTapped(){
        let thirdPreViewController = ThirdPreViewController()
        thirdPreViewController.hidesBottomBarWhenPushed = true
        navigationController?.setViewControllers([thirdPreViewController], animated: true)
    }

}

