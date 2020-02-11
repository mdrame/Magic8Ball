//
//  CustomeUITableViewCell.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/6/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class CustomeUITableViewCell: UITableViewCell {
        
    // MARK: -> Outlets
    
    let cellImage = UIImageView(frame: CGRect(x: 150, y: 20, width: 100, height: 100) )
    

    
    
    
    // MARK: -> Initiallization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Adding Image and Label as subviews to the tableview cell
        addSubview(cellImage)
        cellImage.translatesAutoresizingMaskIntoConstraints = false
        self.cellImageStyling()
      
        
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    
    // MARK: -> Setting UI
    func setUI(object: Images) {
        cellImage.image = UIImage(named: "\(object.imageOne)")
    }
    
    
    
    
    // MARK: -> Views Styling
    
    // Styling the imageView that is in the tableview cell
    func cellImageStyling() {
        
        
        // styling
        cellImage.backgroundColor = .yellow
        cellImage.layer.cornerRadius =  10
        cellImage.clipsToBounds = true
        // constratints
//        cellImageConstraints(view: cellImage)
    }
    
  
    
    func cellImageConstraints(view: UIImageView) {
        cellImageStyling()
        NSLayoutConstraint.activate([
        // Center in cell
               view.centerYAnchor.constraint(equalTo: centerYAnchor),
               view.centerXAnchor.constraint(equalTo: centerXAnchor),
               // width and height
               view.widthAnchor.constraint(equalToConstant: 150),
               view.heightAnchor.constraint(equalToConstant: 150)
        ])
       
    }
    
    
    
    
    
    
    
}
