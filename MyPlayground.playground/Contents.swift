//: Playground - noun: a place where people can play

import UIKit
import iOS_DummyAVAssets

let urls: [URL] = AssetManager.SequenceImage.glitter_filter.urls

let images: [UIImage] = urls.map{ UIImage.init(contentsOfFile: $0.relativePath)! }
print(images)
