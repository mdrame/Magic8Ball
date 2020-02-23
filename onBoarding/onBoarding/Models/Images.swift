//
//  Images.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/10/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import Foundation

class BoxDataModel {
    
    var cellIdentifier: Int
    var imageViewImage: String
    var label1Name: String
    var label2Tittle: String
    
    init(cellIdentifier: Int, imageViewImage: String, label1Name: String, label2Tittle: String ) {
        self.cellIdentifier = cellIdentifier
        self.imageViewImage = imageViewImage
        self.label1Name = label1Name
        self.label2Tittle = label2Tittle
    }
    
   
   static func cellData()->[BoxDataModel] {
        var dataBase = [BoxDataModel(cellIdentifier: 1, imageViewImage: "one", label1Name: "", label2Tittle: ""), BoxDataModel(cellIdentifier: 2, imageViewImage: "box", label1Name: "", label2Tittle: "")]
        return dataBase
    }
    
    
}



