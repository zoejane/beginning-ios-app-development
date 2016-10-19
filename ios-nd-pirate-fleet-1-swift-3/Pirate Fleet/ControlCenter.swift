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
}
struct Mine: _Mine_ {
    let location: GridLocation
    let explosionText: String
}

class ControlCenter {
    
    func addShipsAndMines(_ human: Human) {
        // Write your code here!
        let xlargeShip = Ship(length: 5, location: GridLocation(x:7,y:0), isVertical: true)
        let largeShip = Ship(length: 4, location: GridLocation(x:5,y:3), isVertical: true)
        let mediumShip1 = Ship(length: 3, location: GridLocation(x:0, y:0), isVertical: false)
        let mediumShip2 = Ship(length: 3, location: GridLocation(x:1, y:1), isVertical: true)
        let smallShip = Ship(length: 2, location: GridLocation(x:6,y:3), isVertical: true)
        
        human.addShipToGrid(xlargeShip)
        human.addShipToGrid(mediumShip1)
        human.addShipToGrid(mediumShip2)
        human.addShipToGrid(largeShip)
        human.addShipToGrid(smallShip)
        
        let mine1 = Mine(location: GridLocation(x:7,y:7), explosionText: "Booms!")
        let mine2 = Mine(location: GridLocation(x:7,y:6), explosionText: "Booms! Booms!")
        
        human.addMineToGrid(mine1)
        human.addMineToGrid(mine2)
        
    }
    
    func calculateFinalScore(_ gameStats: GameStats) -> Int {
        
        var finalScore: Int
        
        finalScore = 0
        
        finalScore += ((5 - gameStats.enemyShipsRemaining) * gameStats.sinkBonus) + (( 5 - gameStats.humanShipsSunk) * gameStats.shipBonus) - (gameStats.numberOfHitsOnEnemy + gameStats.numberOfMissesByHuman) * gameStats.guessPenalty
        
        return finalScore
    }
}
