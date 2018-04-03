//
//  Category.swift
//  TRAILguide
//
//  Created by Jay Phillips on 4/2/18.
//  Copyright © 2018 Jay Phillips. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    private(set) public var bgTitle: String
    
    init(title: String, imageName: String, bgTitle: String) {
        self.title = title
        self.imageName = imageName
        self.bgTitle = bgTitle
    }
}


