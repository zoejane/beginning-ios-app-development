//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: (UDItem) throws -> Void) -> [UDPolicingError:Int] {
        // Create a dictionary that keeps a count of how many errors of each type of UDPolicingError is thrown.
        // Iterate through the inventory and test each item using the policingFilter.
        // If policingFilter throws an error for an item, then add one to the running count for the type of error thrown.
        // Return the dictionary.
        

        var errorArray = [UDPolicingError.itemFromCunia: 0,
                      UDPolicingError.nameContainsLaser: 0,
                      UDPolicingError.valueLessThan10: 0]
        for inventoryItem in inventory {
            do {
                try policingFilter(inventoryItem)
            } catch UDPolicingError.itemFromCunia {
                errorArray[.itemFromCunia] = Int(errorArray[.itemFromCunia]!) + 1
            } catch UDPolicingError.nameContainsLaser {
                errorArray[.nameContainsLaser] = Int(errorArray[.nameContainsLaser]!) + 1
            } catch UDPolicingError.valueLessThan10 {
                errorArray[.valueLessThan10] = Int(errorArray[.valueLessThan10]!) + 1
            } catch {
                print("An unknown error happened.")
            }

        }
        
        return errorArray
    }    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
