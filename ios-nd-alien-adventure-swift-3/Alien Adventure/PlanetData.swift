//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        // Open the JSON file located in the main bundle. To do this, use the dataFile parameter and the Bundle.main.url(forResource:withExtension) method.
        // Look through the JSON data and calculate the total points for each planet.
        // Return the name of the planet with the highest point total.
        
        let dataFileURL = Bundle.main.url(forResource: dataFile, withExtension: "json")!
        let rawPlanetJSON = try! Data(contentsOf: dataFileURL)
        
        var planetDictionaryFromJSON: [[String:Any]]
        do {
            planetDictionaryFromJSON = try! JSONSerialization.jsonObject(with: rawPlanetJSON, options: JSONSerialization.ReadingOptions()) as! [[String:Any]]
        }
        
        var total = 0, totalMax = 0, planetName = ""
        
        for planet in planetDictionaryFromJSON {
            if let common = planet["CommonItemsDetected"] as? Int, let uncommon = planet["UncommonItemsDetected"] as? Int, let rare = planet["RareItemsDetected"] as? Int , let legendary = planet["LegendaryItemsDetected"] as? Int, let name = planet["Name"] as? String {
                
                total = common * 1 + uncommon * 2 + rare * 3 + legendary * 4
                print("\(name)\(total)")
                
                if total > totalMax {
                    totalMax = total
                    planetName = name
                }
                
            }
        }
        
        return planetName
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
