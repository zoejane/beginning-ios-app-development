//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    // print("lhsrare\(lhs.rarity.rawValue)rhsrare\(rhs.rarity.rawValue)")
    if lhs.rarity.rawValue < rhs.rarity.rawValue {
        return true
    }
    if lhs.rarity.rawValue == rhs.rarity.rawValue && lhs.baseValue < rhs.baseValue {
            return true
        }
    return false
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
