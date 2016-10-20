//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        var itemPlanet = [UDItem]()
        for item in inventory{
            if let planetName = item.historicalData["PlanetOfOrigin"] {
                if planetName as! String == planet {
                    itemPlanet.append(item)
                }
            }
        }
        
        if itemPlanet.count == 0 {
            return nil
        }
        
        var oldestItem = itemPlanet[0]
        for item in itemPlanet {
            if let age = item.historicalData["CarbonAge"],  age as! Double > oldestItem.historicalData["CarbonAge"] as! Double{
            oldestItem = item
           }
        }
        return oldestItem
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
