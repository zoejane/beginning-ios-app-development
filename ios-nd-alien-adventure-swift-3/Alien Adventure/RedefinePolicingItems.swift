//
//  RedefinePolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

// MARK: - UDPolicingError

enum UDPolicingError: Error {
    case nameContainsLaser
    case itemFromCunia
    case valueLessThan10
}

extension Hero {
    
    func redefinePolicingItems() -> ((UDItem) throws -> Void) {
        
        func policingFilter(item: UDItem) throws -> Void {
            if item.name.contains("Laser"){
                throw UDPolicingError.nameContainsLaser
            } else if String(describing: item.historicalData["PlanetOfOrigin"]).contains("Cunia"){
                throw UDPolicingError.itemFromCunia
            } else if  item.baseValue < 10 {
                throw UDPolicingError.valueLessThan10
            } else {
                print("Good")
            }
            
            
        }
        
        return policingFilter        
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 3"
