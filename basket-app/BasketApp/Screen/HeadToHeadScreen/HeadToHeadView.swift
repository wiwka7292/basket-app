//
//  HeadToHeadView.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class HeadToHeadView: UIView {
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let itemsCount: CGFloat = 1
        let padding: CGFloat = 15
        let paddingCount: CGFloat = itemsCount
        layout.minimumLineSpacing = padding
        layout.minimumInteritemSpacing = padding
        let paddingSize = paddingCount * padding
        let cellSize = (UIScreen.main.bounds.width - paddingSize) / itemsCount - 50
        layout.minimumLineSpacing = padding
        layout.minimumInteritemSpacing = padding
        layout.sectionInset = UIEdgeInsets(top: padding, left: 15, bottom: padding, right: 15)
        layout.itemSize = CGSize(width: cellSize, height: 55)
        let collectionView = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .systemGray5.withAlphaComponent(0.1)
        collectionView.register(GameAnalyticsCollectionCell.self, forCellWithReuseIdentifier: GameAnalyticsCollectionCell.reuseId)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.allowsFocus = true
        collectionView.isScrollEnabled = true
        return collectionView
    }()
    
    var firstTeamLabel: UILabel = {
        var label = UILabel()
        label.text = "Team 1"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    var secondTeamLabel: UILabel = {
        var label = UILabel()
        label.text = "Team 2"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    var firstTeamTextField: UITextField = {
        var textField = UITextField()
        textField.layer.cornerRadius = 8
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return textField
    }()
    
    var secondTeamTextField: UITextField = {
        var textField = UITextField()
        textField.layer.cornerRadius = 8
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true

        return textField
    }()
    
    lazy var firstTeamStackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [firstTeamLabel, firstTeamTextField])
        stack.axis = .vertical
        stack.spacing = 8
        return stack
    }()
    
    lazy var secondTeamStackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [secondTeamLabel, secondTeamTextField])
        stack.axis = .vertical
        stack.spacing = 8
        return stack
    }()
    
    lazy var mainStackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [firstTeamStackView, secondTeamStackView])
        stack.axis = .vertical
        stack.spacing = 15
        stack.widthAnchor.constraint(equalToConstant: 400).isActive = true
        return stack
    }()
    
    var gameAnalyticsLabel: UILabel = {
        var label = UILabel()
        label.text = "Games analytics"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
        backgroundColor = .white
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        self.addSubview(mainStackView)
        self.addSubview(gameAnalyticsLabel)
        self.addSubview(collectionView)
    }
    
    func setupConstraints(){
        mainStackView.snp.makeConstraints { make in
            make.top.equalTo(self).inset(120)
            make.left.right.equalTo(self).inset(35)
        }
        gameAnalyticsLabel.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(mainStackView.snp.bottom).offset(20)
        }
        
        collectionView.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(self)
            make.top.equalTo(gameAnalyticsLabel.snp.bottom).inset(5)
            
        }
    
    }
}


extension HeadToHeadView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GameAnalyticsCollectionCell.reuseId, for: indexPath) as! GameAnalyticsCollectionCell
        cell.backgroundColor = .systemIndigo
        cell.layer.cornerRadius = 10
        return cell
    }
    
    
}
