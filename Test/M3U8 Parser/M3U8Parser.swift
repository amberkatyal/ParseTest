//
//  M3U8Parser.swift
//  Test
//
//  Created by Amber Katyal on 06/02/23.
//

import Foundation

struct M3U8Media {
    let audioGroup: MediaItemGroup?
    let subtitleGroup: MediaItemGroup?
    let renditions: MediaInfo?
    
}

struct MediaItemGroup {
    let items: [MediaItem]
    let title: String?
}

struct MediaItem {
    let isDefault: Bool
    let title: String?
}

struct MediaInfo {
    let bandiwidth: AnyObject?
    let resolution: AnyObject?
    let uri: String?
}

final class M3U8Parser: NSObject {
    
    // enum ParseError: Error
    
    private enum MediaTag: String {
        case media = "EXT-X-MEDIA"
        case info = "EXT-X-STREAM-INF"
        case iFrameInfo = "EXT-X-I-FRAME-STREAM-INF"
    }
    
    private let startingTag = "#"
    private let colonSymbol = ":"
    private let commaSymbol = "#"
    private let quoteSymbol = "\""
    
    static func parse(_ url: URL) { // throws
        DispatchQueue.global().async {
            guard
                let data = try? Data(contentsOf: url, options: [.uncached]),
                let string = String(data: data, encoding: .utf8)
            else {
                return
            }
            guard string.hasPrefix("#EXTM3U") else {
                return // invalid hls
            }
            let lines = string.components(separatedBy: "\n")
            for line in lines {
                if line.hasPrefix(MediaTag.media.rawValue) {
                    
                } else if line.hasPrefix(MediaTag.info.)
            }
        }
        
    }
    
    private static func parseMediaTag() {
        
    }
    
    private static func parseMediaInfoTag() {
        
    }
}


