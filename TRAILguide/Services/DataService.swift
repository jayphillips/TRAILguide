//
//  DataService.swift
//  TRAILguide
//
//  Created by Jay Phillips on 4/2/18.
//  Copyright © 2018 Jay Phillips. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    // Define Categories
    private let categories = [
    Category(title: "BACKPACKING", imageName: "backpackingBG.png"),
    Category(title: "CAMPING", imageName: "campingBG.png"),
    Category(title: "DIVING", imageName: "divingBG.png"),
    Category(title: "FISHING", imageName: "fishingBG.png"),
    Category(title: "HIKING", imageName: "hikingBG.png")
    ]
    func getCategories() -> [Category] {
        return categories
    }
    
    // Define Category Gear
    private let categoryGear = [
        CategoryGear(title: "BACKPACKING GEAR"),
        CategoryGear(title: "CAMPING GEAR"),
        CategoryGear(title: "DIVING GEAR"),
        CategoryGear(title: "FISHING GEAR"),
        CategoryGear(title: "HIKING GEAR")
    ]
    func getCategoryGear(forCategoryTitle title: String) -> [CategoryGear] {
        return categoryGear
    }
    
    // Define Items
    private let backpackingItems = [Item]()
    private let campingItems = [
       Item(imageName: "paracordBracelet.png"),
       Item(imageName: "pupTent.png"),
       Item(imageName: "sleepingBag.png"),
       Item(imageName: "tacticalKnife.png"),
       Item(imageName: "campingStove.png"),
       Item(imageName: "foodCooler.png")
    ]
    private let divingItems = [Item]()
    private let fishingItems = [Item]()
    private let hikingItems = [Item]()
    
    func getItems(fromCategoryTitle title: String) -> [Item] {
        switch title {
        case "BACKPACKING":
        return getBackpackingItems()
        case "CAMPING":
        return getCampingItems()
        case "DIVING":
        return getDivingItems()
        case "FISHING":
        return getFishingItems()
        case "HIKING":
        return getHikingItems()
        default:
            return getBackpackingItems()
            
        }
    }
    func getBackpackingItems() -> [Item] {
        return backpackingItems
    }
    
    func getCampingItems() -> [Item] {
        return campingItems
    }
    
    func getDivingItems() -> [Item] {
        return divingItems
    }
    
    func getFishingItems() -> [Item] {
        return fishingItems
    }
    
    func getHikingItems() -> [Item] {
        return hikingItems
    }
}


