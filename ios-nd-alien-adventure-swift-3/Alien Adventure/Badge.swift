//
//  Badge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class Badge: SKSpriteNode {

    var requestType: UDRequestType
    var imageNamed: String
    
    init(requestType: UDRequestType) {
        self.requestType = requestType
        self.imageNamed = "BadgeMagenta"
        //super.init(texture: nil, color: UIColor.clear, size: CGSize(width: 48, height: 48))
        super.init(texture:SKTexture(imageNamed: imageNamed) , color: UIColor.clear, size: CGSize(width: 48, height: 48))
    }
    
    init(requestType: UDRequestType,imageNamed:String) {
        self.requestType = requestType
        self.imageNamed = imageNamed
        //super.init(texture: nil, color: UIColor.clear, size: CGSize(width: 48, height: 48))
        super.init(texture:SKTexture(imageNamed: imageNamed) , color: UIColor.clear, size: CGSize(width: 48, height: 48))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
