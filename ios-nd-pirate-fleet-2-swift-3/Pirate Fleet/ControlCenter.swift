//
//  ControlCenter.swift
//  Pirate Fleet
//
//  Created by Jarrod Parkes on 9/2/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

struct GridLocation {
    let x: Int
    let y: Int
}

struct Ship {
    let length: Int
    let location: GridLocation
    let isVertical: Bool
    let isWooden: Bool
    

// TODO: Add the computed property, cells.
    var cells: [GridLocation] {
        get {
            // Hint: These two constants will come in handy
            let start = self.location
            let end: GridLocation = ShipEndLocation(self)
            
            // Hint: The cells getter should return an array of GridLocations.
            var occupiedCells = [GridLocation]()
            
            if start.x == end.x {
                for y in start.y...end.y {
                    let occupiedItem = GridLocation(x: start.x, y: y)
                    occupiedCells.append(occupiedItem)
                }
            } else if start.y == end.y{
                for x in start.x...end.x {
                    let occupiedItem = GridLocation(x: x, y: start.y)
                    occupiedCells.append(occupiedItem)
                }
                
            }
            
            return occupiedCells
        }
    }
    
    var hitTracker: HitTracker
// TODO: Add a getter for sunk. Calculate the value returned using hitTracker.cellsHit.
    //You're going to use the HitTracker's cellsHit property to calculate the value of the Ship's computed property, sunk. 
    //As with cells, this computed property needs a getter, and that getter should return a Bool, sunk or not.
    //To get the value of sunk, you'll want to loop through the cellsHit dictionary 
    //and look at each bool value. 
    //If all of the bool values are true, in other words, if all of the cells in a ship have been hit, then the getter for sunk should return true.
    var sunk: Bool {
        get {
            var isSunk = true
            for hit in hitTracker.cellsHit.values {
                if hit == false {
                    isSunk = false
                }
            }
            return isSunk
        }
    }

// TODO: Add custom initializers
//    An initializer for length, location, and isVertical
//   An initializer for length, location, isVertical, and isWooden
//  Remember that even if an initializer does not specify a value for a property, it still must initialize all properties of a struct.
    
    init(length: Int, location:GridLocation, isVertical: Bool) {
        self.length = length
        self.hitTracker = HitTracker()
        self.location = location
        self.isVertical = isVertical
        self.isWooden = false
    }
    
    init(length: Int, location:GridLocation, isVertical: Bool, isWooden: Bool) {
        self.length = length
        self.hitTracker = HitTracker()
        self.location = location
        self.isVertical = isVertical
        self.isWooden = isWooden
    }
}

// TODO: Change Cell protocol to PenaltyCell and add the desired properties
//locate the protocol definition for Cell, change it to PenaltyCell,
// and add the two new properties: guaranteesHit and penaltyText.
// Replace the Cell protocol with the PenaltyCell protocol and added the desired properties.
protocol Cell {
    var location: GridLocation {get}
}

protocol PenaltyCell {
    var location: GridLocation {get}
    var guaranteesHit: Bool {get}
    var penaltyText: String {get}
}


// TODO: Adopt and implement the PenaltyCell protocol
struct Mine: PenaltyCell {
    var location: GridLocation
    var guaranteesHit: Bool {return false}
    var penaltyText: String {return "Mine!!!"}
    
/*
    init(location: GridLocation){
    var location: GridLocation = location
    var guaranteesHit: Bool = false
    var penaltyText: String = "Mine!!!"
    }
    
    // Add custom initializers to:
    
    // init a Mine with only a location and penaltyText
    // init a Mine with a location, penaltyText, and guaranteesHit
    
    init(location: GridLocation, penaltyText: String)
    {
         var location: GridLocation
        var guarenteesHit: Bool = false
        var penaltyText: String
    }


    init(location: GridLocation, guarenteesHit: Bool, penaltyText: String){
        var location: GridLocation = location
        var guarenteesHit: Bool = false
        var penaltyText: String = penaltyText
    }

*/
    }


// TODO: Adopt and implement the PenaltyCell protocol
struct SeaMonster: PenaltyCell {
     let location: GridLocation
     var guaranteesHit: Bool {return true}
     var penaltyText: String {return "SeaMonster!!!"}
    /*let location: GridLocation
    var guaranteesHit: Bool
    var penaltyText: String
    
    init(location:GridLocation) {
        let location: GridLocation = location
        var guaranteesHit: Bool = true
        var penaltyText: String = "SeaMonster!!!"
    }*/
}

class ControlCenter {
    
    func placeItemsOnGrid(_ human: Human) {
  /*
        let smallShip = Ship(length: 2, location: GridLocation(x: 3, y: 4), isVertical: true, isWooden: false, hitTracker: HitTracker())
        human.addShipToGrid(smallShip)
        
        let mediumShip1 = Ship(length: 3, location: GridLocation(x: 0, y: 0), isVertical: false, isWooden: false, hitTracker: HitTracker())
        human.addShipToGrid(mediumShip1)
        
        let mediumShip2 = Ship(length: 3, location: GridLocation(x: 3, y: 1), isVertical: false, isWooden: false, hitTracker: HitTracker())
        human.addShipToGrid(mediumShip2)
        
        let largeShip = Ship(length: 4, location: GridLocation(x: 6, y: 3), isVertical: true, isWooden: false, hitTracker: HitTracker())
        human.addShipToGrid(largeShip)
        
        let xLargeShip = Ship(length: 5, location: GridLocation(x: 7, y: 2), isVertical: true, isWooden: false, hitTracker: HitTracker())
        human.addShipToGrid(xLargeShip)
        
        let mine1 = Mine(location: GridLocation(x: 6, y: 0))
        human.addMineToGrid(mine1)
        
        let mine2 = Mine(location: GridLocation(x: 3, y: 3))
        human.addMineToGrid(mine2)
        
        let seamonster1 = SeaMonster(location: GridLocation(x: 5, y: 6))
        human.addSeamonsterToGrid(seamonster1)
        
        let seamonster2 = SeaMonster(location: GridLocation(x: 2, y: 2))
        human.addSeamonsterToGrid(seamonster2)
  */
        
        let smallShip = Ship(length: 2, location: GridLocation(x: 3, y: 4), isVertical: true, isWooden: true)
        human.addShipToGrid(smallShip)
        
        let mediumShip1 = Ship(length: 3, location: GridLocation(x: 0, y: 0), isVertical: false)
        human.addShipToGrid(mediumShip1)
        
        let mediumShip2 = Ship(length: 3, location: GridLocation(x: 3, y: 1), isVertical: false)
        human.addShipToGrid(mediumShip2)
        
        let largeShip = Ship(length: 4, location: GridLocation(x: 6, y: 3), isVertical: true, isWooden: true)
        human.addShipToGrid(largeShip)
        
        let xLargeShip = Ship(length: 5, location: GridLocation(x: 7, y: 2), isVertical: true)
        human.addShipToGrid(xLargeShip)
        
        let mine1 = Mine(location: GridLocation(x: 6, y: 0))
        //let mine1 = Mine(location: GridLocation(x: 6, y: 0), guarenteesHit: true, penaltyText: "Mine1!GuarenteesHit!")
        human.addMineToGrid(mine1)
        
        let mine2 = Mine(location: GridLocation(x: 3, y: 3))
        //let mine2 = Mine(location: GridLocation(x: 3, y: 3), penaltyText: "Mine2!")
        human.addMineToGrid(mine2)
        
        let seamonster1 = SeaMonster(location: GridLocation(x: 5, y: 6))
        human.addSeamonsterToGrid(seamonster1)
        
        let seamonster2 = SeaMonster(location: GridLocation(x: 2, y: 2))
        human.addSeamonsterToGrid(seamonster2)
        
        print(smallShip.cells)
    }
    
    func calculateFinalScore(_ gameStats: GameStats) -> Int {
        
        var finalScore: Int
        
        let sinkBonus = (5 - gameStats.enemyShipsRemaining) * gameStats.sinkBonus
        let shipBonus = (5 - gameStats.humanShipsSunk) * gameStats.shipBonus
        let guessPenalty = (gameStats.numberOfHitsOnEnemy + gameStats.numberOfMissesByHuman) * gameStats.guessPenalty
        
        finalScore = sinkBonus + shipBonus - guessPenalty
        
        return finalScore
    }
}
