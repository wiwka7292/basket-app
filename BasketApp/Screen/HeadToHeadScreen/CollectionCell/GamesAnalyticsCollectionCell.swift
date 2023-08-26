//
//  GamesAnalyticsCollectionCell.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class GameAnalyticsCollectionCell: UICollectionViewCell {
    
    static var reuseId = "GameAnalyticsCollectionCell"
    
    
    var gameLabel: UILabel = {
        var label = UILabel()
        label.text = "Game 1"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    var gameDateLabel: UILabel = {
        var label = UILabel()
        label.text = "2015-11-08"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.textAlignment = .left
        return label
    }()
    
    lazy var stackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [gameLabel, gameDateLabel])
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        return stack
    }()
    
    var invisibleButton: UIButton = {
        var button = UIButton()
        button.addTarget(self, action: #selector(HeadToHeadVC.onCellTapped), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        self.addSubview(stackView)
        self.addSubview(invisibleButton)
    }
    
    func setupConstraints(){
        stackView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
        invisibleButton.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
        
    }

}
