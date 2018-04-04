//
//  CategoryItem.swift
//  TRAILguide
//
//  Created by Jay Phillips on 4/3/18.
//  Copyright © 2018 Jay Phillips. All rights reserved.
//

import Foundation

struct CategoryItem {
    private(set) public var imageName: String
    private(set) public var title: String
    private(set) public var description: String
    
    init(imageName: String, title: String, description: String) {
        self.imageName = imageName
        self.title = title
        self.description = description
    }
}
