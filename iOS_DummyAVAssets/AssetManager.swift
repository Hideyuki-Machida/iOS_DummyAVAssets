//
//  AssetManager.swift
//  CCamDummyAssetBundle
//
//  Created by 町田 秀行 on 2018/08/03.
//  Copyright © 2018年 hideyuki machida. All rights reserved.
//

import UIKit
import AVFoundation

final public class AssetManager {
    static public let shard = AssetManager()
    public var bundlr: Bundle!
    
    private init() {
        self.bundlr = Bundle(for: type(of: self))
    }
    
    private func getAssetFile(forResource: String, withExtension: String) -> UIImage {
        return UIImage(data: try! Data(contentsOf: AssetManager.shard.bundlr.url(forResource: forResource, withExtension: withExtension)!))!
    }
    private func getAssetFile(url: URL) -> UIImage {
        return UIImage(data: try! Data(contentsOf: url))!
    }
    
    public enum VideoAsset: String {
        case landscapeLeft = "landscapeLeft"
        case landscapeRight = "landscapeRight"
        case portrait001 = "portrait001"
        case portrait002 = "portrait002"
        
        public var url: URL {
            get {
                switch self {
                case .landscapeLeft: return AssetManager.shard.bundlr.url(forResource: self.rawValue, withExtension: "MOV")!
                case .landscapeRight: return AssetManager.shard.bundlr.url(forResource: self.rawValue, withExtension: "MOV")!
                case .portrait001: return AssetManager.shard.bundlr.url(forResource: self.rawValue, withExtension: "MOV")!
                case .portrait002: return AssetManager.shard.bundlr.url(forResource: self.rawValue, withExtension: "mp4")!
                }
            }
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
                switch self {
                case .svg_girl_theme_01: return AssetManager.shard.bundlr.url(forResource: self.rawValue, withExtension: "aac")!
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
                switch self {
                case .vivid: return AssetManager.shard.bundlr.url(forResource: self.rawValue, withExtension: "png")!
                }
            }
        }
    }

    public enum SequenceImage: String {
        case sample001 = "sample001"
        
        public var urls: [URL] {
            get {
                switch self {
                case .sample001: return (Array(1...240)).map { AssetManager.shard.bundlr.url(forResource: "pngSample\(NSString(format: "%04d" , $0))", withExtension: "png")! }
                }
            }
        }
    }

}
