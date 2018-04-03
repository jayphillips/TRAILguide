//
//  ItemCell.swift
//  TRAILguide
//
//  Created by Jay Phillips on 4/2/18.
//  Copyright © 2018 Jay Phillips. All rights reserved.
//

import UIKit

class ItemCell: UICollectionViewCell {
    

     @IBOutlet weak var itemImage: UIImageView!
    
    
    
    func updateItemView(item: Item) {
        itemImage.image = UIImage(named: item.imageName)
    }
}
