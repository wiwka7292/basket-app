//
//  LabelFactory.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class LabelFactory{
    
    func createLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = .white
        return label
    }
}
