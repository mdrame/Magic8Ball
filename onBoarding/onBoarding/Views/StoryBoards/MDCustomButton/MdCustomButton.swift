//
//  MdCustomButton.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/5/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class MdCustomButton: UIButton {

 // CustomClassProperties
    required init(framee: CGRect, bg: UIColor, title: String?, titleState: UIControl.State, layer: CGFloat) {
         super.init(frame: framee)
   
        self.frame =  frame
        self.backgroundColor = bg
        self.setTitle(title, for: titleState)
        //styling
        self.layer.cornerRadius = layer
  
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
