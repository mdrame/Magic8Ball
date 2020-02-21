//
//  MDCustomCollectionViewCell.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/20/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class MDCustomCollectionViewCell: UICollectionViewCell {
    
    // Properties
    static var cellIdentifier = "CustomeCell"
    
    
    // Outlets
    // Image view in the content view
    var collectionImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds =  true
        imageView.image = #imageLiteral(resourceName: "one")
        return imageView
    }()
    
    // label in the content view
//    var collectionLabel = UILabel()

    // programmatic
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        contentView.addSubview(collectionImage)
        imageAndLabelSetUp()
//        contentView.addSubview(collectionLabel)
        
 
        
    }
    
    
    // storyBoard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    // image and label set up
    // change function to adopt to a data model
    func imageAndLabelSetUp() {
        
   
        
//        constraints
        NSLayoutConstraint.activate([
            collectionImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            collectionImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            collectionImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            collectionImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
        ])
        
        
        
        
    }
    
    
    
    
    // Set UI
    
    
    
    
    
    
    
    
    
    
    
}
