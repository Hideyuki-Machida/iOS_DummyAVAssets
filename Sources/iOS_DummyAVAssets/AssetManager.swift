//
//  File.swift
//  
//
//  Created by hideyuki machida on 2020/06/23.
//

import Foundation
import AVFoundation

final public class DummyAssetManager {
    static public let shard = DummyAssetManager()

    public enum VideoAsset: String {
        case landscapeLeft = "landscapeLeft"
        case landscapeRight = "landscapeRight"
        case portrait001 = "portrait001"
        case portrait002 = "portrait002"
        
        public var url: URL {
            let dir: String = "Movie/"
            return Bundle.module.url(forResource: dir + self.rawValue, withExtension: "MOV")!
        }
        
        public var urlAsset: AVURLAsset {
            get {
                return AVURLAsset(url: self.url)
            }
        }
    }

    
    public enum AudioAsset: String {
        case svg_girl_theme_01 = "svg_girl_theme_01"
        
        public var url: URL {
            get {
                let dir: String = "Audio/"
                switch self {
                case .svg_girl_theme_01: return Bundle.module.url(forResource: dir + self.rawValue, withExtension: "aac")!
                }
            }
        }
        
        public var urlAsset: AVURLAsset {
            get {
                return AVURLAsset(url: self.url)
            }
        }
    }

    public enum LutAsset: String {
        case vivid = "vivid"

        public var url: URL {
            get {
                let dir: String = "Lut/"
                switch self {
                case .vivid: return Bundle.module.url(forResource: dir + self.rawValue, withExtension: "png")!
                }
            }
        }
    }

    public enum SequenceImage: String {
        case sample001 = "Sample001"
        
        public var urls: [URL] {
            get {
                let dir: String = "SequenceImage/"
                switch self {
                case .sample001:
                    return (Array(1...240)).map {
                        Bundle.module.url(forResource: dir + self.rawValue + "/" + "pngSample\(NSString(format: "%04d" , $0))", withExtension: "png")!
                    }
                }
            }
        }
    }

    
}
