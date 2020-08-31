//
//  Constant.swift
//  Covender
//
//  Created by Marc Tamarit on 28/8/20.
//  Copyright © 2020 simco. All rights reserved.
//

import UIKit

struct Constant {
    enum Margin: CGFloat {
        case zero = 0
        case min = 4
        case low = 8
        case regular = 16
        case separator = 24
        case hight = 32
        case max = 48
    }
    
    static func margin(_ margin: Margin) -> CGFloat {
        return margin.rawValue
    }
}
