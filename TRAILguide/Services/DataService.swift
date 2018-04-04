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
    
    private let categories = [
        Category(title: "BACKPACKING", imageName: "backpackingBG.png", bgTitle: "BACKPACKING GEAR"),
        Category(title: "CAMPING", imageName: "campingBG.png", bgTitle: "CAMPING GEAR"),
        Category(title: "DIVING", imageName: "divingBG.png", bgTitle: "DIVING GEAR"),
        Category(title: "FISHING", imageName: "fishingBG.png", bgTitle: "FISHING GEAR"),
        Category(title: "HIKING", imageName: "hikingBG.png", bgTitle: "HIKING GEAR")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    
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
       
    private let categoryItems = [
        CategoryItem(imageName: "paracordBracelet.png", title: "Paracord Bracelet", description: "This is a paracord bracelet."),
        CategoryItem(imageName: "pupTent.png", title: "Pup Tent", description: "This is a pup tent."),
        CategoryItem(imageName: "sleepingBag.png", title: "Sleeping Bag", description: "A sleeping bag is a camping essential. It provides a warm and semi-comfortable place to sleep when camping. Some sleeping bags are rated for temperatures below 0 degrees F! We recommend the SnugSleeper SubZero bag for camping anywhere you think you might be cold."),
        CategoryItem(imageName: "tacticalKnife.png", title: "Tactical Knife", description: "This is a tactical knife."),
        CategoryItem(imageName: "campingStove.png", title: "Camping Stove", description: "This is a camping stove."),
        CategoryItem(imageName: "foodCooler.png", title: "Food Cooler", description: "This is a food cooler.")
        ]
    
    func getCategoryItems() -> [CategoryItem] {
        return categoryItems
    }
    
    
}


