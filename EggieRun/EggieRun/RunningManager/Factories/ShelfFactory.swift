//
//  ShelfFactory.swift
//  EggieRun
//
//  Created by Liu Yang on 17/4/16.
//  Copyright © 2016 Eggieee. All rights reserved.
//

import SpriteKit

class ShelfFactory {
    private static let MAX_NUM_OF_MID_PIECE: UInt32 = 10
    private static let MAX_NUM_OF_GAP = 20
    private static let UNIT_GAP_SIZE: CGFloat = 50
    
    func nextPlatform() -> Closet {
        let numOfMid = Int(arc4random() % (ShelfFactory.MAX_NUM_OF_MID_PIECE + 1))
        let numOfGap = Int(arc4random() % (ShelfFactory.MAX_NUM_OF_GAP + 1))

        return Shelf(numOfMidPiece: numOfMid, gapSize: numOfGap * ShelfFactory.UNIT_GAP_SIZE)
    }
}