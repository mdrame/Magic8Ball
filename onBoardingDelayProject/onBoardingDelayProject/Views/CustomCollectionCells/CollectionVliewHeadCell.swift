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
    func featured()->[Featured] {
             let db = [Featured(dataImage: "treat", dataLabel: "Treat"), Featured(dataImage: "toy", dataLabel: "Toy"),Featured(dataImage: "supply", dataLabel: "Supply")]
             return db
         }
       
    
    
    // Create collectionView with with herozontal scrolling
    lazy var collectionview: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionview = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionview.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        collectionview.translatesAutoresizingMaskIntoConstraints = false
        collectionview.register(HorizontonCell.self, forCellWithReuseIdentifier:  HorizontonCell.innterCellIdentifier)
        collectionview.showsHorizontalScrollIndicator = false
        return collectionview
    }()
    
    func collectionviewConstraint() {
        NSLayoutConstraint.activate([
            collectionview.topAnchor.constraint(equalTo: contentView.topAnchor),
            collectionview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            collectionview.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            collectionview.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
    
    // programmatic
    override init(frame: CGRect) {
        super.init(frame: frame)
        //        self.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
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
        return featured().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontonCell.innterCellIdentifier, for: indexPath) as! HorizontonCell
        cell.setUI(array: featured()[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.contentView.frame.size.width / 2.5, height: self.contentView.frame.size.height - 20)
    }
    
    
    private class HorizontonCell: UICollectionViewCell {
        static var innterCellIdentifier = "inerCell"
        
        lazy var cellimageView: UIImageView = {
            let imageView = UIImageView(frame: .zero)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .scaleAspectFit
            //        imageView.backgroundColor = .black
            return imageView
        }()
        
        func cellimageViewConstrain()  {
            NSLayoutConstraint.activate([
              cellimageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
              cellimageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
              cellimageView.widthAnchor.constraint(equalToConstant: contentView.frame.size.width / 1.5),
              cellimageView.heightAnchor.constraint(equalToConstant: contentView.frame.size.height / 2)
            ])
        }
        
        lazy var label: UILabel = {
            let labelToDisplay = UILabel(frame: .zero)
            //           labelToDisplay.backgroundColor = .systemFill
            labelToDisplay.translatesAutoresizingMaskIntoConstraints = false
            labelToDisplay.font = UIFont(name: "Kohinoor Bangla", size: 24)
            labelToDisplay.textAlignment = .left
            labelToDisplay.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            labelToDisplay.adjustsFontSizeToFitWidth = true
            return labelToDisplay
        }()
        
        func labelConstrain() {
             NSLayoutConstraint.activate([
                label.topAnchor.constraint(equalTo: cellimageView.bottomAnchor, constant: 5),
                label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
            ])
        }
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            contentView.backgroundColor = #colorLiteral(red: 0.4413420558, green: 0.4277904928, blue: 0.9862704873, alpha: 1)
            contentView.layer.cornerRadius = 10
            contentView.addSubview(cellimageView)
            cellimageViewConstrain()
            contentView.addSubview(label)
            labelConstrain()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func setUI(array model: Featured ) {
            cellimageView.image = UIImage(named: "\(model.dataImage)")
            label.text = model.dataLabel
        }
        
        
        
        
    }
    
    
}
