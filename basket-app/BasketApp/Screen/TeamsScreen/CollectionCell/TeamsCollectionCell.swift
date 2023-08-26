//
//  TeamsCollectionCell.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class TeamsCollectionCell: UICollectionViewCell {
    
    static var reuseId = "TeamsCollectionCell"
    
    var flagCountryTeamImageView: UIImageView = {
        var image = UIImageView()
        image.image = UIImage(named: "USA")
        let width = UIScreen.main.bounds.width
        image.contentMode = .scaleAspectFit
        image.heightAnchor.constraint(equalToConstant: 0.2 * width).isActive = true
        image.widthAnchor.constraint(equalToConstant: 0.2 * width).isActive = true
        return image
    }()
    
    var nameTeamLabel: UILabel = {
        var label = UILabel()
        label.text = "Brooklyn Nets"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 19)
        return label
    }()
    
    var countryTeamLabel: UILabel = {
        var label = UILabel()
        label.text = "United States"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    lazy var stackView: UIStackView = {
        var stack = UIStackView(arrangedSubviews: [nameTeamLabel, countryTeamLabel])
        stack.axis = .vertical
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
        self.addSubview(flagCountryTeamImageView)
        self.addSubview(stackView)

    }
    
    func setupConstraints(){
        flagCountryTeamImageView.snp.makeConstraints { make in
            make.centerY.equalTo(self)
            make.right.equalTo(nameTeamLabel.snp.left).inset(-20)
        }
        
        stackView.snp.makeConstraints { make in
            make.centerX.centerY.equalTo(self)
        }
        
    }
}
