# iOS_DummyAVAssets

[![Swift 5.0](https://img.shields.io/badge/Swift-5.0-orange.svg?style=flat)](https://developer.apple.com/swift/)
![platforms](https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS%20%7C%20Linux-333333.svg)
[![Xcode 10.2+](https://img.shields.io/badge/Xcode-10.2+-blue.svg?style=flat)](https://developer.apple.com/swift/)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

iOSの映像関連開発用 映像・音声 共通アセット集


## Sample

### Video

* VideoサンプルのバンドルURLを取得

```
iOS_DummyAVAssets.AssetManager.VideoAsset.landscapeLeft.url
iOS_DummyAVAssets.AssetManager.VideoAsset.landscapeRight.url
iOS_DummyAVAssets.AssetManager.VideoAsset.portrait001.url
iOS_DummyAVAssets.AssetManager.VideoAsset.portrait002.url
```

* VideoサンプルのAVURLAssetを取得

```
iOS_DummyAVAssets.AssetManager.VideoAsset.landscapeLeft.urlAsset
iOS_DummyAVAssets.AssetManager.VideoAsset.landscapeRight.urlAsset
iOS_DummyAVAssets.AssetManager.VideoAsset.portrait001.urlAsset
iOS_DummyAVAssets.AssetManager.VideoAsset.portrait002.urlAsset
```

<br />

### Audio

* AudioサンプルのバンドルURLを取得

```
iOS_DummyAVAssets.AssetManager.AudioAsset.url
```

* AudioサンプルのAVURLAssetを取得

```
iOS_DummyAVAssets.AssetManager.AudioAsset.urlAsset
```


<br />

### Lut


* LutサンプルのバンドルURLを取得

```
iOS_DummyAVAssets.AssetManager.LutAsset.vivid.url
```

* LutサンプルのバンドルAVURLAssetを取得

```
iOS_DummyAVAssets.AssetManager.LutAsset.vivid.urlAsset
```

<br />

### SequenceImage


* SequenceImageサンプルのバンドルURL配列を取得

```
iOS_DummyAVAssets.AssetManager.SequenceImage.sample001.urls
```


## Installation

### [Carthage](https://github.com/Carthage/Carthage)

```
github "Hideyuki-Machida/iOS_DummyAVAssets" ~> 0.0.1
```
