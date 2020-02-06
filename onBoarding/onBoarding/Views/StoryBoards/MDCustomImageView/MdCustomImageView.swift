//
//  MdCustomImageView.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/5/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class MdCustomImageView: UIImageView {

   
      // CustomClassProperties
    required init(image: UIImage, framee: CGRect, bgcolor: UIColor, cotentMode: UIView.ContentMode ) {
           super.init(frame: framee)
        self.image = image
        self.frame = framee
        self.backgroundColor = bgcolor
        self.contentMode = .scaleToFill
          
        
          
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
