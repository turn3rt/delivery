//
//  Item.swift
//  Standard-Fil-A
//
//  Created by Turner Thornberry on 2/13/18.
//  Copyright © 2018 Turner Thornberry. All rights reserved.
//

import Foundation
import UIKit

class Item {
    
    
    var name: String
    var image: UIImage
    var price: Double

    init(name: String, image: UIImage, price: Double) {
        self.name = name
        self.image = image
        self.price = price
    }

    
}
