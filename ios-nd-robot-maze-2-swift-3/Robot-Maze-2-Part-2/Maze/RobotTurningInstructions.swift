//
//  RobotTurningInstructions.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 11/5/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    func randomlyRotateRightOrLeft(_ robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        print("randomlyRotateRightOrLeft: \(randomNumber)")
        // You may want to paste your Part 1 implementation of randomlyRotateRightOrLeft(robot: ComplexRobotObject) here
        if randomNumber == 0 {
            robot.rotateLeft()
        }else{
            robot.rotateRight()
        }
    }
    
    func continueStraightOrRotate(_ robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        print("continueStraightOrRotate: \(randomNumber)")
        // You may want to paste your Part 1 implementation of continueStraightOrRotate(robot: ComplexRobotObject) here
        if randomNumber == 1 {
            robot.move()
        } else{
            randomlyRotateRightOrLeft(robot)
        }
    }
}
