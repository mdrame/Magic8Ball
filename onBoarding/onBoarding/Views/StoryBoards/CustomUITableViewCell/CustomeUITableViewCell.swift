//
//  CustomeUITableViewCell.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/6/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class CollectionViewTableViewCustomcELL: UITableViewCell {
    
    // MARK: -> Global Variables
    static let cell = "cell"
    
    // MARK: -> Outlets
//
//    let cellImage = UIImageView(frame: CGRect(x: 150, y: 20, width: 100, height: 100) )
//
//
//    func cellCalls() {
//        addSubview(cellImage)
//        cellImage.translatesAutoresizingMaskIntoConstraints = false
//        self.cellImageStyling()
//    }
//
    
    
    
    // MARK: -> Initiallization
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Adding Image and Label as subviews to the tableview cell
        
//        cellCalls()
        
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        cellCalls()
    }
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
//        cellCalls()
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
