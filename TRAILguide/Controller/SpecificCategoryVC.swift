//
//  SpecificCategoryVC.swift
//  TRAILguide
//
//  Created by Jay Phillips on 4/2/18.
//  Copyright © 2018 Jay Phillips. All rights reserved.
//

import UIKit

class SpecificCategoryVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var itemsCollection: UICollectionView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    private(set) public var items = [Item]()
    
    var categoryGearTitle: String?
    var categoryBackgroundImage: String?

    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        itemsCollection.dataSource = self
        itemsCollection.delegate = self
        
        titleLabel.text = categoryGearTitle
        backgroundImage.image = UIImage(named: categoryBackgroundImage!)
    

        }
    
    
    func initItems(category: Category) {
        items = DataService.instance.getItems(fromCategoryTitle: category.title)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as? ItemCell {
            let item = items[indexPath.row]
            cell.updateItemView(item: item)
            return cell
        }
    
        return ItemCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = DataService.instance.getCategoryItems()[indexPath.row]
        performSegue(withIdentifier: "toDetailVC", sender: item)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailVC {
            assert(sender as? CategoryItem != nil)
            detailVC.initCategoryItems()
            detailVC.detailCategoryLabelTitle = (sender as! CategoryItem).title
            detailVC.detailCategoryBGImage = (sender as! CategoryItem).imageName
            detailVC.detailDescription = (sender as! CategoryItem).description
        }
    }
    
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func unwindFromDetailVC(unwindSegue: UIStoryboardSegue) {
        
    }
    
}
