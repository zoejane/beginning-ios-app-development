//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        // Loop through each item in the inventory and count the number of times each character appears. Also, make sure to use the lowercase representation of each item's name. Otherwise, an item named "StarDust" would add 1 to separate counts for 'S' and 's'.
        // Return the character that appears the most.
        
        if inventory == [] {
            return nil
        }
        

        var lowercaseName = ""
        for item in inventory {
            lowercaseName = lowercaseName + item.name.lowercased()
        }
        print(lowercaseName)
        
        var counting = [String: Int]()
        for char in "abcdefghijklmnopqrstuvwxyz".characters{
            counting["\(char)"] = 0
        }
        
        for charName in lowercaseName.characters {
                    counting["\(charName)"] = counting["\(charName)"]! + 1
            }
        
        var maxNumber = 0
        var commonChar : Character = "a"
        
        for char in "abcdefghijklmnopqrstuvwxyz".characters {
            if counting["\(char)"]! > maxNumber {
                maxNumber = counting["\(char)"]!
                commonChar = char
            }
        }
        
        print(commonChar)
        return commonChar
    }
}
