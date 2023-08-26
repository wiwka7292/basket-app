//
//  BasicsCollectionCell.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class BasicsCollectionCell: UICollectionViewCell{
    
    static var reuseId = "BasicsCollectionCell"
    
    var stadiumImageView: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "stadium")
        let width = UIScreen.main.bounds.width
        image.contentMode = .scaleAspectFit
        image.heightAnchor.constraint(equalToConstant: 0.2 * width).isActive = true
        image.widthAnchor.constraint(equalToConstant: 0.2 * width).isActive = true
        return image
    }()
    
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Sports Betting - A Complete Beginners Guide, Learn and WIN!"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        return label
    }()
    
    var textLabel: UILabel = {
        var label = UILabel()
        label.text = "Sports Betting - Learn everything you nedd to know to get started TODAY plus common mistakes to avoid"
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)

        return label
    }()
    
    lazy var stackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [stadiumImageView, titleLabel, textLabel])
        stack.axis = .vertical
        stack.isLayoutMarginsRelativeArrangement = true
        stack.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 15, leading: 5, bottom: 15, trailing: 5)
        return stack
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
    }
    
    func setupConstraints(){
        stackView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
    
}
