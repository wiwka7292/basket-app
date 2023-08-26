//
//  GameAnalyticsView.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class GameAnalyticsView: UIView {
    
    var teamName = "team name"
    var firstQuarter = 32
    var secondQuarter = 32
    var thirdQuarter = 32
    var fourthQuarter = 32
    var overtime = 10
    var total = 105

  
    
    lazy var homePlaceGameLabel = LabelFactory().createLabel(text: "home")
    lazy var teamNameLabel = LabelFactory().createLabel(text: "team: " + teamName)
    lazy var firstQuarterLabel = LabelFactory().createLabel(text: "quarter 1: \(firstQuarter) ")
    lazy var secondQuarterLabel = LabelFactory().createLabel(text: "quarter 2: \(secondQuarter) ")
    lazy var thirdQuarterLabel = LabelFactory().createLabel(text: "quarter 3: \(thirdQuarter) ")
    lazy var fourthQuarterLabel = LabelFactory().createLabel(text: "quarter 4: \(fourthQuarter) ")
    lazy var overtimeLabel = LabelFactory().createLabel(text: "overtime: \(overtime)")
    lazy var gameTotalLabel = LabelFactory().createLabel(text: "total: \(total)")


    lazy var awayPlaceGameLavel = LabelFactory().createLabel(text: "away")
    lazy var teamAwayLabel = LabelFactory().createLabel(text: "team: " + teamName)
    lazy var firstQuarterAwayLabel = LabelFactory().createLabel(text: "quarter 1: \(firstQuarter) ")
    lazy var secondQuarterAwayLabel = LabelFactory().createLabel(text: "quarter 2: \(secondQuarter) ")
    lazy var thirdQuarterAwayLabel = LabelFactory().createLabel(text: "quarter 3: \(thirdQuarter) ")
    lazy var fourthQuarterAwayLabel = LabelFactory().createLabel(text: "quarter 4: \(fourthQuarter) ")
    lazy var overTimeAwayLabel = LabelFactory().createLabel(text: "overtime: \(overtime)")
    lazy var gameTotalAwayLabel = LabelFactory().createLabel(text: "total: \(total)")


    lazy var homeGameAnalyticsStackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [homePlaceGameLabel, teamNameLabel, firstQuarterLabel, secondQuarterLabel, thirdQuarterLabel, fourthQuarterLabel, overtimeLabel, gameTotalLabel])
        stack.axis = .vertical
        stack.spacing = 5
        return stack
    }()
    
    lazy var awayGameAnalyticsStackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [awayPlaceGameLavel, teamAwayLabel, firstQuarterAwayLabel, secondQuarterAwayLabel, thirdQuarterAwayLabel, fourthQuarterAwayLabel, overTimeAwayLabel, gameTotalAwayLabel])
        stack.axis = .vertical
        stack.spacing = 5
        return stack
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
        backgroundColor = UIColorFromRGB(rgbValue: 0x0B0B32)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        self.addSubview(homeGameAnalyticsStackView)
        self.addSubview(awayGameAnalyticsStackView)
    }
    
    func setupConstraints(){
        homeGameAnalyticsStackView.snp.makeConstraints { make in
            make.top.left.equalTo(self).inset(40)
        }
        
        awayGameAnalyticsStackView.snp.makeConstraints { make in
            make.left.equalTo(self).inset(40)
            make.top.equalTo(homeGameAnalyticsStackView.snp.bottom).offset(20)
        }
    }
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
