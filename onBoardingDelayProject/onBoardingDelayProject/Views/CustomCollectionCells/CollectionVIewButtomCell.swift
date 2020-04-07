//
//  CollectionVIewButtomCell.swift
//  onBoardingDelayProject
//
//  Created by Mohammed Drame on 3/31/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class CollectionVIewButtomCell: UICollectionViewCell {
    static let cellIdentifier = "buttomCell"
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
//        imageView.backgroundColor = .black
        return imageView
    }()
    
    func imageViewConstrain()  {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 3),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -30),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -290),
        ])
    }
    
    lazy var mainStackView: UIStackView = {
           let mainStackView = UIStackView(frame: .zero)
           mainStackView.translatesAutoresizingMaskIntoConstraints = false
           mainStackView.axis = .vertical
           mainStackView.distribution = .fillEqually
           mainStackView.spacing = 1
           return mainStackView
       }()
       
    private func mainStackViewConstrain() {
           NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 0),
            mainStackView.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 120),
            mainStackView.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 0),
            mainStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0)
           ])
       }
    
    lazy var labelOne: UILabel = {
        let labelToDisplay = UILabel(frame: .zero)
        //           labelToDisplay.backgroundColor = .systemFill
        labelToDisplay.translatesAutoresizingMaskIntoConstraints = false
        labelToDisplay.font = UIFont(name: "Kohinoor Bangla", size: 24)
        labelToDisplay.textAlignment = .left
        labelToDisplay.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        labelToDisplay.adjustsFontSizeToFitWidth = true
        mainStackView.addArrangedSubview(labelToDisplay)
        return labelToDisplay
    }()
    
    lazy var labelTwo: UILabel = {
        let labelToDisplay = UILabel(frame: .zero)
        //           labelToDisplay.backgroundColor = .systemFill
        labelToDisplay.translatesAutoresizingMaskIntoConstraints = false
        labelToDisplay.font = UIFont(name: "Kohinoor Bangla", size: 20)
        labelToDisplay.textAlignment = .left
        labelToDisplay.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        mainStackView.addArrangedSubview(labelToDisplay)
        return labelToDisplay
    }()
    
   
    
     // programmatic
      override init(frame: CGRect) {
          super.init(frame: frame)
//        self.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        contentView.addSubview(imageView)
        imageViewConstrain()
        contentView.addSubview(mainStackView)
        mainStackViewConstrain()
      }

      // storyBoard
      required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
      }
    
    
    func addData(array model: Favorite) {
        imageView.image = UIImage(named: "\(model.picture)")
        labelOne.text = "\(model.productName)"
        labelTwo.text = "\(model.category)"
    }
    
}
