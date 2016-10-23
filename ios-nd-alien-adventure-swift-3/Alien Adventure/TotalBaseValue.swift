//
//  TotalBaseValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func totalBaseValue(inventory: [UDItem]) -> Int {
        
        var baseValueArray = [Int]()
        for item in inventory{
            baseValueArray.append(item.baseValue)
        }
        
        let total = baseValueArray.reduce(0, {
            $0 + $1
        })
        
        return total
        
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
