//
//  DSDeltaCore.swift
//  DSDeltaCore
//
//  Created by Riley Testut on 8/2/19.
//  Copyright © 2019 Riley Testut. All rights reserved.
//

import DeltaCore

@objc public enum DSGameInput: Int, _Input {
    case up = 1
    case down = 2
    case left = 4
    case right = 8
    case a = 16
    case b = 32
    case x = 64
    case y = 128
    case l = 256
    case r = 512
    case start = 1024
    case select = 2048
    
    case touchScreenX = 4096
    case touchScreenY = 8192

    public var isContinuous: Bool {
        switch self
        {
        case .touchScreenX, .touchScreenY: return true
        default: return false
        }
    }
}
