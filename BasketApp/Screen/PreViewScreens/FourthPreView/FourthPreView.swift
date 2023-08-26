//
//  FirstPreView.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit
import SnapKit

class FourthPreView: UIView{
    
    var fourthPreViewImage: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "fourthPreView")
        let width = UIScreen.main.bounds.width
        image.contentMode = .scaleToFill
        image.heightAnchor.constraint(equalToConstant:  600 ).isActive = true
        image.widthAnchor.constraint(equalToConstant:  width ).isActive = true
        return image
    }()
    
    var navigButton: UIButton = {
        var button = UIButton()
        button.setTitle("Next", for: .normal)
        button.backgroundColor = .systemIndigo
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 19)
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(FourthPreViewController.nextButtonTapped), for: .touchUpInside)
        return button
    }()
    
    var textLabel: UILabel = {
        var label = UILabel()
        label.text = "Learn the basics with a course"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var stackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [textLabel, navigButton])
        stack.axis = .vertical
        stack.backgroundColor = .white
        stack.layer.cornerRadius = 15
        stack.isLayoutMarginsRelativeArrangement = true
        stack.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 10, leading: 35, bottom: 30, trailing: 35)
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
        self.addSubview(fourthPreViewImage)
        self.addSubview(stackView)
    }
    
    func setupConstraints(){
        fourthPreViewImage.snp.makeConstraints { make in
            make.top.equalTo(self)
        }
        
        stackView.snp.makeConstraints { make in
            make.bottom.left.right.equalTo(self)
            make.top.equalTo(fourthPreViewImage.snp.bottom)
        }
    }
}
