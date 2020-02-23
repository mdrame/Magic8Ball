//
//  BoxDataModel.swift
//  onBoarding
//
//  Created by Mohammed Drame on 2/22/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import Foundation


class BoxDataModel {
    
    var cell: Int
    var dataImage: String
    var tittleOne: String
    var tittleTwo: String
    
    init(cell: Int, dataImage: String, tittleOne: String, tittleTwo: String) {
        self.cell = cell
        self.dataImage = dataImage
        self.tittleOne = tittleOne
        self.tittleTwo = tittleTwo
    }
    
    
    
    
    static func cellData()->[BoxDataModel] {
        
        let array = [BoxDataModel(cell: 1, dataImage: "box", tittleOne: "New Box", tittleTwo: "Old Box"), BoxDataModel(cell: 2, dataImage: "box", tittleOne: "Finnes", tittleTwo: "Finnes"),
        BoxDataModel(cell: 1, dataImage: "two", tittleOne: "AnotherImage", tittleTwo: "New Image"), BoxDataModel(cell: 2, dataImage: "three", tittleOne: "Last Object", tittleTwo: "SubDivision")]
        return array
    }
    
    
    
}
