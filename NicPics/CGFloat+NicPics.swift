//
//  CGFloat+NicPics.swift
//  NicPics
//
//  Created by David Mkrtychyan on 12/5/18.
//  Copyright © 2018 David Mkrtychyan. All rights reserved.
//

import UIKit
extension CGFloat {
    static var normalizedRandom: CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
    
    static func random(from min: CGFloat, to max: CGFloat) -> CGFloat {
        
        return CGFloat.random(in: min...max)
    }
}
