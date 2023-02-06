//
//  Player.swift
//  Test
//
//  Created by Amber Katyal on 06/02/23.
//

import Foundation
import AVFoundation

protocol PlayerDelegate: AnyObject {
    func player(didPause player: TestPlayer)
    //
    
}

enum TestPlayerItem {
    case live(URL)
    case clip(URL)
}

struct PlayerConfig {
    
}


final class TestPlayer {
    private var player: AVPlayer
    weak var delegate: PlayerDelegate?
    // playback logic.
    
    private let item: TestPlayerItem //
    
    init(item: TestPlayerItem, config: PlayerConfig) {
        
    }
    
    
    
}


