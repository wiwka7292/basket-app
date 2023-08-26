//
//  BasicsView.swift
//  BasketApp
//
//  Created by Жека on 25/08/2023.
//

import UIKit

class BasicsView: UIView{
    
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
        layout.itemSize = CGSize(width: cellSize, height: 250)
        let collectionView = UICollectionView.init(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .systemGray5.withAlphaComponent(0.1)
        collectionView.register(BasicsCollectionCell.self, forCellWithReuseIdentifier: BasicsCollectionCell.reuseId)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.allowsFocus = true
        collectionView.isScrollEnabled = true
        return collectionView
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
        self.addSubview(collectionView)
        
    }
    
    func setupConstraints(){
        collectionView.snp.makeConstraints { make in
            make.edges.equalTo(self)
        }
    }
}

extension BasicsView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BasicsCollectionCell.reuseId, for: indexPath) as! BasicsCollectionCell
        cell.backgroundColor = .systemIndigo
        cell.layer.cornerRadius = 10
        return cell
    }
    
    
}
