//
//  MDCustomLabel.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/5/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

/// Custom UILabel 
class MdCustomLabel: UILabel {
    
    // CustomClassProperties
    required init(title: String, framee: CGRect, bgcolor: UIColor, textColorr: UIColor, alignment: NSTextAlignment, textSize: UIFont ) {
         super.init(frame: framee)
        
        self.text = title
        self.frame = framee
        self.backgroundColor = bgcolor
        self.textColor = textColorr
        self.textAlignment = alignment
        self.font = textSize
        
      
        
     }
    
    
    
    // programmatic nib call
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    // storyBoard nib call
    required init?(coder aDecorder: NSCoder) {
        super.init(coder: aDecorder)
    }
    
    
    
    

}
