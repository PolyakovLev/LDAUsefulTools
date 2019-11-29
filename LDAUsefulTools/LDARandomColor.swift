//
//  LDARandomColor.swift
//  LDAUsefulTools
//
//  Created by GORYAVIN Vladimir on 28/11/2019.
//  Copyright © 2019 POLYAKOV Lev. All rights reserved.
//

import UIKit

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    public func randomColor() -> UIColor {
        return UIColor(red: .random(), green: .random(), blue:  .random(), alpha: .random())
    }
}

