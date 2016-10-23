//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        var match = true
        
        var typeArray = [String]()
        for badge in badges {
            typeArray.append(badge.requestType.rawValue)
        }
        
        for request in requestTypes {
            if !typeArray.contains(request.rawValue){
                match = false
            }
        }
        return match
    }
    
}
