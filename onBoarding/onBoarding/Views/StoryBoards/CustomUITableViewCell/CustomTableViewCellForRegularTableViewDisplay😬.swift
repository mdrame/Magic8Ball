//
//  CustomTableViewCellForRegularTableViewDisplay😬.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/22/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class CustomTableViewCellForRegularTableViewDisplay__: UITableViewCell {
    
    
    // MARK: -> Global Variables
    static let cell = "cell2"
    
    // MARK: -> Outlets
    
    /// Custom Image
    lazy var imageViewContainer : UIImageView = {
        let image =  UIImageView(frame: .zero)
        image.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.masksToBounds = true
        image.layer.cornerRadius = 10
        return image
    }()
    
    func imageConstraints() {
        NSLayoutConstraint.activate([
            imageViewContainer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            imageViewContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            imageViewContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            imageViewContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -contentView.frame.size.width / 2 * 1.5)
            
        ])
        
    }
    
    /// This function add subviews and constraints to cell content view
    func cellCalls() {
        contentView.addSubview(imageViewContainer)
        imageConstraints()
        
        contentView.addSubview(custoLabel)
        customLabelConstrain()
    }
    
    /// Custome UILabel
    lazy var custoLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.masksToBounds =  true
        label.layer.cornerRadius = 10
        label.textAlignment = .center
        label.font = UIFont(name: "Arial", size: 30)
        return label
    }()
    
    func customLabelConstrain() {
        NSLayoutConstraint.activate([
                   custoLabel.topAnchor.constraint(equalTo: imageViewContainer.topAnchor, constant: 10),
                   custoLabel.leadingAnchor.constraint(equalTo: imageViewContainer.trailingAnchor, constant: 10),
                   custoLabel.bottomAnchor.constraint(equalTo: imageViewContainer.bottomAnchor),
                   custoLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)
                   
                   
               ])
    }
    
    
    func setUpSubViews(object model: BoxDataModel) {
        cellCalls()
        imageViewContainer.image = UIImage(named: "\(model.dataImage)")
        custoLabel.text = model.tittleOne
//        custoLabel.text = "New Product Name"
 
    }
    
    
    
    // Add Image View and label with styling in this cell
    
    
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
        fatalError("init(coder:) has not been implemented")
//        cellCalls()
    }
    
    
    
    
    
    //    override func setSelected(_ selected: Bool, animated: Bool) {
    //        super.setSelected(selected, animated: animated)
    //
    //        // Configure the view for the selected state
    //    }
    
}
