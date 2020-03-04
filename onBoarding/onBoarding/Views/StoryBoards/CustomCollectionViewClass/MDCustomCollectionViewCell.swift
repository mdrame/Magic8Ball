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
//        imageView.image = #imageLiteral(resourceName: "one")
        imageView.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius =  10
        imageView.layer.masksToBounds = true
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
             collectionImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            collectionImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5),
            
            collectionImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
           
            collectionImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5)
            
//            collectionImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
//            collectionImage.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 2),
//            collectionImage.heightAnchor.constraint(equalTo: contentView.heightAnchor , multiplier: 1)
            
            
        ])
        
        
        
        
    }
    
    
    
    
    // Set UI
    
    
    
    
    
    
    
    
    
    
    
}
