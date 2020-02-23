//
//  CustomTableViewCellForCollectionView.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/22/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class CustomTableViewCellForCollectionView: UITableViewCell {
    
    
    // MARK: -> Global Variables
    static let cell = "cell1"
    
    
    var collectionView : UICollectionView!
    
    // MARK: -> Outlets
    // Create Collection View
    
    
    
    
    
    func collectionViewConstrain() {
        
        NSLayoutConstraint.activate([
            
            collectionView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            
            collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            
            //            collectionViewContiner.heightAnchor.constraint(equalTo: collectionViewContiner.widthAnchor, multiplier: 0.5),
            
            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0)
        ])
        
        
    }
    
    func collectionViewCalls() {
        
        contentView.addSubview(collectionView)
        collectionViewConstrain()
        
        // styling
//        collectionView.layer.cornerRadius = 10
//        collectionView.clipsToBounds =  true
    }
    
    
    
    // MARK: -> Initiallization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Adding Image and Label as subviews to the tableview cell
        
        //                collectionViewCalls()
        
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        //                collectionViewCalls()
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        //                collectionViewCalls()
    }
    
    
    // MARK: -> Setting UI
    //    func setUI(object: Images) {
    //        cellImage.image = UIImage(named: "\(object.imageOne)")
    //    }
    
    
    
    
    // MARK: -> Views Styling
    
    // Styling the imageView that is in the tableview cell
    //    func cellImageStyling() {
    //
    //
    //        // styling
    //        cellImage.backgroundColor = .yellow
    //        cellImage.layer.cornerRadius =  10
    //        cellImage.clipsToBounds = true
    //        // constratints
    //        //        cellImageConstraints(view: cellImage)
    //    }
    
    
    //
    //    func cellImageConstraints(view: UIImageView) {
    //        cellImageStyling()
    //        NSLayoutConstraint.activate([
    //            // Center in cell
    //            view.centerYAnchor.constraint(equalTo: centerYAnchor),
    //            view.centerXAnchor.constraint(equalTo: centerXAnchor),
    //            // width and height
    //            view.widthAnchor.constraint(equalToConstant: 150),
    //            view.heightAnchor.constraint(equalToConstant: 150)
    //        ])
    //
    //    }
    
}
