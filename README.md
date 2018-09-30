# RKAutoLayout

[![CI Status](https://img.shields.io/travis/DaskiOFF/RKAutoLayout.svg?style=flat)](https://travis-ci.org/DaskiOFF/RKAutoLayout)
[![Cocoapods compatible](https://img.shields.io/badge/Cocoapods-compatible-4BC51D.svg?style=flat)](https://cocoapods.org/)
[![codecov](https://codecov.io/gh/daskioff/RKAutoLayout/branch/master/graph/badge.svg)](https://codecov.io/gh/daskioff/RKAutoLayout)
[![docs](https://cdn.rawgit.com/DaskiOFF/RKAutoLayout/master/docs/badge.svg)](https://cdn.rawgit.com/DaskiOFF/RKAutoLayout/master/docs/index.html)
[![Version](https://img.shields.io/cocoapods/v/RKAutoLayout.svg?style=flat)](https://cocoapods.org/pods/RKAutoLayout)
[![Platform](https://img.shields.io/cocoapods/p/RKAutoLayout.svg?style=flat)](https://cocoapods.org/pods/RKAutoLayout)
[![Swift Version](https://img.shields.io/badge/Swift-4.1-brightgreen.svg?style=flat)](https://developer.apple.com/swift)
[![License](https://img.shields.io/cocoapods/l/RKAutoLayout.svg?style=flat)](https://cocoapods.org/pods/RKAutoLayout)

Easy AutoLayout

## TL;DR

```swift
let view1: UIView = UIView()
let view2: UIView = UIView()

view1.addSubview(view2)

/// Add all
view1.rk_alAdd(
    size: [.width(view2), .height(100)], 
    center: [.centerX()], 
    edge: [.top(10), .bottom(view2, offset: -34)], isActive: false)
view1.rk_alAdd(size: [.height(100)], edge: [.top(min: 10), .bottom(view2, offset: -34)], isActive: false)
view1.rk_alAdd(center: [.centerX()], edge: [.top(10), .bottom(max: view2.topAnchor, offset: -34)])

/// Edges
view1.rk_alEdgeSuperViewBounds()
view1.rk_alEdge(.top(200))
view1.rk_alEdge(.top(bottomAnchor, offset: -43))
view1.rk_alEdge(.top(0), .left(10), isActive: false)

/// Size
view1.rk_alSize(.width(50), .height(view2, multiplier: 3))
view1.rk_alSize(.width(view2.heightAnchor, priority: .low), .height(view2))
view1.rk_alSize(.width(200), .height(min: 60), .height(max: 220))

/// Center
view1.rk_alCenterSuperView()
view1.rk_alCenter(.centerX(100), .centerY(300))
view1.rk_alCenter(.centerX(), .centerY(view2.topAnchor))
view1.rk_alCenter(values: RKConstraintCenter.center(view2, offsetX: -100, offsetY: -100))

/// Baseline
view1.rk_alBaseline(.firstBaseline(100), .lastBaseline(300))
```

## Requirements

- iOS 9.0 and above
- Swift 4.1

## Documentations

Full documentation for the latest release is available [here](https://daskioff.github.io/RKAutoLayout/)

## Installation

RKAutoLayout is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RKAutoLayout', '~> 0.2'
```

## Author

DaskiOFF, waydeveloper@gmail.com

## License

RKAutoLayout is available under the MIT license. See the [LICENSE](LICENSE) file for more info.

## [Dependencies](https://ios-factor.com/dependencies)
Последний раз проект собирался с версией **Xcode** указанной в файле ```.xcode-version``` ([Подробнее](https://github.com/fastlane/ci/blob/master/docs/xcode-version.md))

Последний раз проект собирался с версией **Swift** указанной в файле ```.swift-version```
