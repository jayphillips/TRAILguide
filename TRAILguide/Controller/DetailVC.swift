//
//  DetailVC.swift
//  TRAILguide
//
//  Created by Jay Phillips on 4/3/18.
//  Copyright © 2018 Jay Phillips. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    

    @IBOutlet weak var detailCategoryTitle: UILabel!
    @IBOutlet weak var detailCategoryDescription: UILabel!
    @IBOutlet weak var detailCategoryImage: UIImageView!
    
    private(set) public var categoryItems = [CategoryItem]()
    
    var detailCategoryBGImage: String?
    var detailCategoryLabelTitle: String?
    var detailDescription: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailCategoryImage.image = UIImage(named: detailCategoryBGImage!)
        detailCategoryTitle.text = detailCategoryLabelTitle
        detailCategoryDescription.text = detailDescription
    }

    func initCategoryItems() {
        categoryItems = DataService.instance.getCategoryItems()
    }
    
    
    
}
