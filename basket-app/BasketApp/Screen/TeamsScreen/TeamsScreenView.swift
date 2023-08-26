//
//  TeamsScreenView.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class TeamsScreenView: UIView {
    
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let itemsCount: CGFloat = 1
        let padding: CGFloat = 15
        let paddingCount: CGFloat = itemsCount
        layout.minimumLineSpacing = padding
        layout.minimumInteritemSpacing = padding
        let paddingSize = paddingCount * padding
        let cellSize = (UIScreen.main.bounds.width - paddingSize) / itemsCount - 35
        layout.minimumLineSpacing = padding
        layout.minimumInteritemSpacing = padding
        layout.sectionInset = UIEdgeInsets(top: padding, left: 15, bottom: padding, right: 15)
        layout.itemSize = CGSize(width: cellSize, height: 75)
        let collectionView = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .systemGray5.withAlphaComponent(0.1)
        collectionView.register(TeamsCollectionCell.self, forCellWithReuseIdentifier: TeamsCollectionCell.reuseId)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.allowsFocus = true
        collectionView.isScrollEnabled = true
        return collectionView
    }()
    
    
    var leagueLabel: UILabel = {
        var label = UILabel()
        label.text = "League"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    var seasonLabel: UILabel = {
        var label = UILabel()
        label.text = "Season"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    var leagueTextField: UITextField = {
        var textField = UITextField()
        textField.layer.cornerRadius = 8
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return textField
    }()
    
    var seasonTextField: UITextField = {
        var textField = UITextField()
        textField.layer.cornerRadius = 8
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true

        return textField
    }()
    
    lazy var leagueStackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [leagueLabel, leagueTextField])
        stack.axis = .vertical
        stack.spacing = 8
        return stack
    }()
    
    lazy var seasonStackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [seasonLabel, seasonTextField])
        stack.axis = .vertical
        stack.spacing = 8
        return stack
    }()
    
    lazy var mainStackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [leagueStackView, seasonStackView])
        stack.axis = .vertical
        stack.spacing = 15
        stack.widthAnchor.constraint(equalToConstant: 400).isActive = true
        return stack
    }()
    
    var teamsLabel: UILabel = {
        var label = UILabel()
        label.text = "Teams"
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
        self.addSubview(teamsLabel)
        self.addSubview(collectionView)
    }
    
    func setupConstraints(){
        mainStackView.snp.makeConstraints { make in
            make.top.equalTo(self).inset(120)
            make.left.right.equalTo(self).inset(35)
        }
        teamsLabel.snp.makeConstraints { make in
            make.centerX.equalTo(self)
            make.top.equalTo(mainStackView.snp.bottom).offset(20)
        }
        collectionView.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(self)
            make.top.equalTo(teamsLabel.snp.bottom).inset(5)
            
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


extension TeamsScreenView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TeamsCollectionCell.reuseId, for: indexPath) as! TeamsCollectionCell
//        cell.layer.cornerRadius = 15
//        cell.clipsToBounds = true
        cell.backgroundColor = UIColorFromRGB(rgbValue: 0x0B0B32)
        cell.layer.cornerRadius = 10
        return cell
    }
    
    
}

