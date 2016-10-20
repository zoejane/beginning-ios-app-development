//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        // Open the plist file located in the main bundle.
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "plist")!
        
        //Look through the contents of the plist file and determine any items that should be banned. An item should be banned if it contains the word “laser” in its name and has a carbon age of less than 30.
        let ItemArray = NSArray(contentsOf: dataFileURL) as! [[String:Any]]
        print("array translated")
        
        var bannedArray = [Int]()
        for item in ItemArray {
            print("into for loop")
            
            let historicalData = item["HistoricalData"] as? [String:Any]
            
            if let name = item["Name"] as? String, let age = historicalData?["CarbonAge"] as? Int {
                print(name)
                
                if name.contains("Laser") && age < 30 {
                    let id = item["ItemID"] as? Int
                    print(id)
                    bannedArray.append(id!)
                }
            }
        }
        
        return bannedArray
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
