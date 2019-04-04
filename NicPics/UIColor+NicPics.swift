//
//  UIColor+NicPics.swift
//  NicPics
//
//  Created by David Mkrtychyan on 12/5/18.
//  Copyright © 2018 David Mkrtychyan. All rights reserved.
//

import UIKit

extension UIColor {
    static var random: UIColor {
        return UIColor(red:   .normalizedRandom,
                       green: .normalizedRandom,
                       blue:  .normalizedRandom,
                       alpha: 1.0)
    }
    
    // Creating an extension function vs above which is a variable.
//    static func random() -> UIColor {
//
//    }
}
