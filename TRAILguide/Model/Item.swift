//
//  Item.swift
//  TRAILguide
//
//  Created by Jay Phillips on 4/2/18.
//  Copyright © 2018 Jay Phillips. All rights reserved.
//

import Foundation

struct Item {
    private(set) public var imageName: String
    
    init(imageName: String) {
        self.imageName = imageName
    }
}
