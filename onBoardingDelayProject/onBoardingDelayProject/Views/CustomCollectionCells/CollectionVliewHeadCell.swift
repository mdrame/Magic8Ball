//
//  CollectionVliewHeadCell.swift
//  onBoardingDelayProject
//
//  Created by Mohammed Drame on 3/31/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class CollectionVliewHeadCell: UICollectionViewCell, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    static let cellIdentifier = "headCell"
    
    
    // Create collectionView with with herozontal scrolling
    lazy var collectionview: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionview = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionview.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        collectionview.register(HorizontonCell.self, forCellWithReuseIdentifier:  HorizontonCell.innterCellIdentifier)
        return collectionview
    }()
    
    func collectionviewConstraint() {
        NSLayoutConstraint.activate([
            collectionview.topAnchor.constraint(equalTo: contentView.topAnchor),
            collectionview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collectionview.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            collectionview.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    // programmatic
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemPink
        collectionview.delegate = self
        collectionview.dataSource = self
        self.addSubview(collectionview)
        collectionviewConstraint()
        
    }
    
    
    // storyBoard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontonCell.innterCellIdentifier, for: indexPath) as! HorizontonCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.contentView.frame.size.width / 3, height: self.contentView.frame.size.height - 20)
    }
    
    
    private class HorizontonCell: UICollectionViewCell {
        static var innterCellIdentifier = "inerCell"
        override init(frame: CGRect) {
            super.init(frame: frame)
            contentView.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        
        
        
    }
    
    
}
