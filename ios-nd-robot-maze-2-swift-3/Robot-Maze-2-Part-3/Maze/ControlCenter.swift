//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {

    var mazeController: MazeController!

    func moveComplexRobot(_ myRobot: ComplexRobotObject) {
      
        let robotIsBlocked = isFacingWall(myRobot, direction: myRobot.direction)
        let myWallInfo = checkWalls(myRobot)
        
        let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)
        let isTwoWayPath = (myWallInfo.numberOfWalls == 2)
        let isDeadEnd = (myWallInfo.numberOfWalls == 3)
        
        print("isThreeWayJunction "+String(isThreeWayJunction))
        print("isTwoWayPath "+String(isTwoWayPath))
        print("isDeadEnd "+String(isDeadEnd))
        
        // Step 2.3a
        // Three-way Path - else-if statements
        
        // TODO: If the robot encounters a three way junction and there IS a wall ahead, it should randomly rotate right or left. Uncomment the code below.
        if isThreeWayJunction && robotIsBlocked {
            randomlyRotateRightOrLeft(myRobot)
        }
        
        // TODO: If the robot encounters a three way junction and there is NO wall ahead, it should continue straight or rotate (you need to write this else-if statement)
        if isThreeWayJunction && !robotIsBlocked {
            continueStraightOrRotate(myRobot, wallInfo: myWallInfo)
        }
        
        
        // Step 2.3b
        // Two-way Path - else-if statements
        
        // TODO: If the robot encounters a two way path and there is NO wall ahead it should continue forward.
        if isTwoWayPath && !robotIsBlocked{
            myRobot.move()
        }
        
        // TODO: If the robot encounters a two way path and there IS a wall ahead, it should turn in the direction of the clear path.
        if isTwoWayPath && robotIsBlocked{
            // randomlyRotateRightOrLeft(myRobot)
            continueStraightOrRotate(myRobot, wallInfo: myWallInfo)
        }
        
        
        // Step 2.3c
        // Dead end - else-if statements
        // TODO: If the robot encounters a dead end and there is NO wall ahead it should move forward.
        if isDeadEnd && !robotIsBlocked {
                myRobot.move()
            }
                
        // TODO: If the robot encounters a dead end and there IS a wall ahead it should rotateRight().
        if isDeadEnd && robotIsBlocked {
                myRobot.rotateRight()
            }
        
        
    }
    
    func previousMoveIsFinished(_ robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
    
}
