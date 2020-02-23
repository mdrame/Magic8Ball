//
//  MDCustomCollectionViewCell.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/20/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class MDCustomCollectionViewCell: UICollectionViewCell,  UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    // Properties
    static var cellIdentifier = "CustomeCell"
    
    // Outlets
    // Image view in the content view
    var collectionImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds =  true
        imageView.backgroundColor = .green
        imageView.image = #imageLiteral(resourceName: "one")
        imageView.layer.cornerRadius = 15
        return imageView
    }()
    
    // label in the content view
//    var collectionLabel = UILabel()

    // programmatic
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        contentView.addSubview(collectionImage)
        viewsConstratins()
//        contentView.addSubview(collectionLabel)
        
 
        
    }
    
    
    // storyBoard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    // image and label set up
    // change function to adopt to a data model
    func viewsConstratins() {
        
   
        
//        constraints
        NSLayoutConstraint.activate([
            collectionImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            collectionImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            collectionImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            collectionImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
        ])
        
        
        
        
    }
    
    
    
    // MARK: -> Collection View Delegate and Data Source.
     
 //        func numberOfSections(in collectionView: UICollectionView) -> Int {
 //            2
 //        }
     
     
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return 20
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MDCustomCollectionViewCell.cellIdentifier, for: indexPath) as! MDCustomCollectionViewCell
         cell.contentView.backgroundColor = .orange
         return cell
     }
     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.size.width / 4, height: 250)
        
    }
     
     
    
    
    
    
    
    
    
    
    
    
    
}
