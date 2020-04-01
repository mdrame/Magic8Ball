//
//  CollectionVliewHeadCell.swift
//  onBoardingDelayProject
//
//  Created by Mohammed Drame on 3/31/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class CollectionVliewHeadCell: UICollectionViewCell {
    static let cellIdentifier = "headCell"

     // programmatic
       override init(frame: CGRect) {
           super.init(frame: frame)
        self.backgroundColor = .systemPink
        
       }
       
       
       // storyBoard
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    
}
