//
//  Favorite.swift
//  onBoardingDelayProject
//
//  Created by Mohammed Drame on 4/6/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import Foundation

class Favorite {
    var picture: String
    var productName: String
    var category: String
    init(picture: String, productName: String, category: String) {
        self.picture = picture
        self.productName = productName
        self.category = category
    }
}
