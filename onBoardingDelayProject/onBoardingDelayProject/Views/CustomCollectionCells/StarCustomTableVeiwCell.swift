////
////  StarCustomTableVeiwCell.swift
////  onBoardingDelayProject
////
////  Created by Mohammed Drame on 4/5/20.
////  Copyright © 2020 Mo Drame. All rights reserved.
////
//
//import UIKit
//
//class StarCustomTableVeiwCell: CustomTableViewCell {
//
//    // Create CellIdentifier
//    static var cellIdentifier = "StarCustomCell"
//    // Create Outlets and connect to view controller
//    lazy var imageToDisplay: UIImageView = {
//        let imageToDiplay = UIImageView(frame: .zero)
//        //        imageToDiplay.backgroundColor = .systemPink
//        imageToDiplay.translatesAutoresizingMaskIntoConstraints = false
//        imageToDiplay.contentMode = .scaleToFill
//        // styling
//        imageToDiplay.layer.cornerRadius =  10
//        imageToDiplay.layer.masksToBounds = true
//        return imageToDiplay
//    }()
//
//    lazy var labelToDisplay: UILabel = {
//        let labelToDisplay = UILabel(frame: .zero)
//        //           labelToDisplay.backgroundColor = .systemFill
//        labelToDisplay.translatesAutoresizingMaskIntoConstraints = false
//        labelToDisplay.font = UIFont(name: "Kohinoor Bangla", size: 30)
//        labelToDisplay.textAlignment = .left
//
//        return labelToDisplay
//    }()
//
//
//    // create outlets constraints
//    func outletsConstraint() {
//        NSLayoutConstraint.activate([
//            // Image
//            imageToDisplay.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
//            imageToDisplay.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
//            imageToDisplay.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -30),
//            imageToDisplay.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -230),// Temp *
//            // Label
//            labelToDisplay.topAnchor.constraint(equalTo: imageToDisplay.topAnchor, constant: 0),
//            labelToDisplay.leadingAnchor.constraint(equalTo: imageToDisplay.trailingAnchor, constant: 20),
//            labelToDisplay.bottomAnchor.constraint(equalTo: imageToDisplay.bottomAnchor, constant: 0),
//            labelToDisplay.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -5)
//        ])
//    }
//    // Init CustomCell*
//
//    // Make sure to call outlets in CellForRowAt method
//    func setUpView(object modelData: PastBoxModel ){
//        contentView.addSubview(imageToDisplay)
//        contentView.addSubview(labelToDisplay)
//        outletsConstraint()
//        imageToDisplay.image = UIImage(named: "\(modelData.dataImage)")
//        labelToDisplay.text =  modelData.dataLabel
//
//    }
//
//
//
//
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//
//
//}
//
