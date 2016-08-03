---

This library is deprecated in favor of [PLXColors](https://github.com/Polidea/PLXColors)

---

# PLColors

[![CI Status](http://img.shields.io/travis/Polidea/PLColors.svg?style=flat)](https://travis-ci.org/Polidea/PLColors)
[![Version](https://img.shields.io/cocoapods/v/PLColors.svg?style=flat)](http://cocoadocs.org/docsets/PLColors)
[![License](https://img.shields.io/cocoapods/l/PLColors.svg?style=flat)](http://cocoadocs.org/docsets/PLColors)
[![Platform](https://img.shields.io/cocoapods/p/PLColors.svg?style=flat)](http://cocoadocs.org/docsets/PLColors)

PLColors is a small library that allows you to create UIColor or NSColor objects based on the hexadecimal representation of the 
colors, similar to that used in HTML and CSS languages. UIKit/AppKit allows you to create UIColor/NSColor objects only with floating 
point numbers which is inconvenient when you get these values from graphics programs.

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

### Methods

PLColors provides four methods to create UIColor or NSColor objects:

```objc
+ (PLColor *)colorWithHexString:(NSString *)hexString;
+ (PLColor *)colorWithHexStringWithAlpha:(NSString *)hexString;
+ (PLColor *)colorWithHexInteger:(NSUInteger)value;
+ (PLColor *)colorWithHexIntegerWithAlpha:(NSUInteger)value;
```

where PLColor is UIColor or NSColor class depends on target platform.

See the code or [Documentation](http://cocoadocs.org/docsets/PLColors) to check in which format should be parameters.

## Requirements

- iOS6 or OS X 10.8

## Installation

PLColors is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "PLColors"

## Author

Michał Laskowski, michal.laskowski@polidea.com

## License

PLColors is available under the MIT license. See the LICENSE file for more info.

