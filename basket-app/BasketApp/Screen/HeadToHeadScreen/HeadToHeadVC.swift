//
//  HeadToHeadVC.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class HeadToHeadVC: UIViewController {
    
    var headToHeadView: HeadToHeadView { self.view as! HeadToHeadView}
    
    override func loadView() {
        view = HeadToHeadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @objc func onCellTapped(){
        let gameAnalticsVC = GameAnalyticsVC()
        navigationController?.present(gameAnalticsVC, animated: true)
    }
  
}
