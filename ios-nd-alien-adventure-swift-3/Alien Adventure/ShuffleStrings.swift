//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1: String, s2: String, shuffle: String) -> Bool {
        if s1 == "" && s2 == "" && shuffle == "" {
            return true
        }
        if (s1.characters.count + s2.characters.count) != shuffle.characters.count {
            return false
        }
        
        var compareS1 = ""
        var compareS2 = ""
        
        for indexShuffle in shuffle.characters.indices {
            if s1.characters.contains(shuffle[indexShuffle]){
                compareS1 = compareS1 + String(shuffle[indexShuffle])
            }
            if s2.characters.contains(shuffle[indexShuffle]){
                compareS2 = compareS2 + String(shuffle[indexShuffle])
            }
        }
        if s1 == compareS1 && s2 == compareS2{
            return true
        }
        return false
    }
        
}
