# RKAutoLayout

[![CI Status](https://img.shields.io/travis/DaskiOFF/RKAutoLayout.svg?style=flat)](https://travis-ci.org/DaskiOFF/RKAutoLayout)
[![Cocoapods compatible](https://img.shields.io/badge/Cocoapods-compatible-4BC51D.svg?style=flat)](https://cocoapods.org/)
[![codecov](https://codecov.io/gh/daskioff/RKAutoLayout/branch/master/graph/badge.svg)](https://codecov.io/gh/daskioff/RKAutoLayout)
[![docs](https://cdn.rawgit.com/DaskiOFF/RKAutoLayout/master/docs/badge.svg)](https://cdn.rawgit.com/DaskiOFF/RKAutoLayout/master/docs/index.html)
[![Version](https://img.shields.io/cocoapods/v/RKAutoLayout.svg?style=flat)](https://cocoapods.org/pods/RKAutoLayout)
[![Platform](https://img.shields.io/cocoapods/p/RKAutoLayout.svg?style=flat)](https://cocoapods.org/pods/RKAutoLayout)
[![Swift Version](https://img.shields.io/badge/Swift-4.1-brightgreen.svg?style=flat)](https://developer.apple.com/swift)
[![License](https://img.shields.io/cocoapods/l/RKAutoLayout.svg?style=flat)](https://cocoapods.org/pods/RKAutoLayout)

## Documentations

https://daskioff.github.io/RKAutoLayout/

## Requirements

- iOS 9.0 and above
- Swift 4.1

## Installation

RKAutoLayout is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RKAutoLayout'
```

## Examples

```swift

/// Add all
anyView.rk_alAdd(
    size: [.width(anotherView), .height(100)], 
    center: [.centerX()], 
    edge: [.top(10), .bottom(anotherView, offset: -34)], isActive: false)
anyView.rk_alAdd(size: [.height(100)], edge: [.top(10), .bottom(anotherView, offset: -34)], isActive: false)
anyView.rk_alAdd(center: [.centerX()], edge: [.top(10), .bottom(anotherView.topAnchor, offset: -34)])

/// Edges
anyView.rk_alEdgeSuperViewBounds()
anyView.rk_alEdge(.top(200))
anyView.rk_alEdge(.top(bottomAnchor, offset: -43))
anyView.rk_alEdge(.top(0), .left(10), isActive: false)

/// Size
anyView.rk_alSize(values: [.width(50), .height(anotherView, multiplier: 3)])
anyView.rk_alSize(values: [.width(anotherView.heightAnchor, priority: .low), .height(anotherView)])
anyView.rk_alSize(values: [.width(200), .height(min: 60), .height(max: 220)])

/// Center
anyView.rk_alCenterSuperView()
anyView.rk_alCenter(values: [.centerX(100), .centerY(300)])
anyView.rk_alCenter(values: [.centerX(), .centerY(anotherView.topAnchor)])
anyView.rk_alCenter(values: RKConstraintCenter.center(anotherView, offsetX: -100, offsetY: -100))
```

## Author

DaskiOFF, waydeveloper@gmail.com

## License

RKAutoLayout is available under the MIT license. See the LICENSE file for more info.

## [Dependencies](https://ios-factor.com/dependencies)
Последний раз проект собирался с версией **Xcode** указанной в файле ```.xcode-version``` ([Подробнее](https://github.com/fastlane/ci/blob/master/docs/xcode-version.md))

Последний раз проект собирался с версией **Swift** указанной в файле ```.swift-version```
