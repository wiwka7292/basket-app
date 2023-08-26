//
//  BasicsVC.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class BasicsVC: UIViewController {
    
    var basicsView: BasicsView { self.view as! BasicsView }
    
    override func loadView() {
        view = BasicsView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
