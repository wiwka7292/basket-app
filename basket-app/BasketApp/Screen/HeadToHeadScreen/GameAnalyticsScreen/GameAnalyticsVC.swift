//
//  GameAnalyticsVC.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class GameAnalyticsVC: UIViewController {
    
    
    var gameAlanyticsView: GameAnalyticsView { self.view as! GameAnalyticsView}
    
    override func loadView() {
        view = GameAnalyticsView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
