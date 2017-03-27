//
//  WhackSlot.swift
//  WhackAMole
//
//  Created by Jason Crawford on 3/27/17.
//  Copyright © 2017 Jason Crawford. All rights reserved.
//

import UIKit
import SpriteKit

class WhackSlot: SKSpriteNode {

    var charNode: SKSpriteNode!
    
    func configure(at postion: CGPoint) {
        
        self.position = position
        
        let sprite = SKSpriteNode(imageNamed: "whackHole")
        
        addChild(sprite)
        
        let cropNode = SKCropNode()
        cropNode.position = CGPoint(x: 0, y: 15)
        cropNode.zPosition = 1
        cropNode.maskNode = nil
        
        charNode = SKSpriteNode(imageNamed: "penguinGood")
        charNode.position = CGPoint(x: 0, y: -90)
        charNode.name = "character"
        cropNode.addChild(charNode)
        
        addChild(cropNode)
    }
}












