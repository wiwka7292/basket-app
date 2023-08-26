//
//  ViewController.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class FirstPreViewController: UIViewController {

    var firstPreView: FirstPreView { self.view as! FirstPreView }
    
    override func loadView() {
        view = FirstPreView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @objc func nextButtonTapped(){
        let secondPreViewController = SecondPreViewController()
        secondPreViewController.hidesBottomBarWhenPushed = true
        navigationController?.setViewControllers([secondPreViewController], animated: true)
    }


}

