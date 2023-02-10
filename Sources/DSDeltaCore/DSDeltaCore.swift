//
//  DSDeltaCore.swift
//  DSDeltaCore
//
//  Created by Riley Testut on 8/2/19.
//  Copyright © 2019 Riley Testut. All rights reserved.
//

import Foundation
import AVFoundation

@_exported import DeltaCore
@_exported import DSSwift
@_exported import DSBridge

extension DSGameInput: Input {
    public var type: InputType {
        return .game(.ds)
    }
}

public struct DS: DeltaCoreProtocol {
    public static let core = DS()
    
    public var name: String { "DSDeltaCore" }
    public var identifier: String { "com.rileytestut.DSDeltaCore" }
    
    public var gameType: GameType { GameType.ds }
    public var gameInputType: Input.Type { DSGameInput.self }
    public var gameSaveFileExtension: String { "dsv" }
    
    public let audioFormat = AVAudioFormat(commonFormat: .pcmFormatInt16, sampleRate: 44100, channels: 2, interleaved: true)!
    public let videoFormat = VideoFormat(format: .bitmap(.rgba8), dimensions: CGSize(width: 256, height: 384))
    
    public var supportedCheatFormats: Set<CheatFormat> {
        return []
    }
    
    public var emulatorBridge: EmulatorBridging { DSEmulatorBridge.shared as! EmulatorBridging }
    
    private init()
    {
    }
}
