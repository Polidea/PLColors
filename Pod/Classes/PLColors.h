//
//  Created by Michał Laskowski <michal.laskowski@polidea.com>
//  Copyright (c) 2015 Polidea Sp. z o.o.
//

#import <Foundation/Foundation.h>

#if TARGET_OS_IPHONE
    #define PLColor UIColor
#else
    #define PLColor NSColor
#endif

@interface PLColor (PLColors)

/**
*   Creates UIColor / NSColor object based on hexadecimal string without alpha component.
*
*   @param hexString String describing color in format RRGGBB or RGB, where R,G,B are hexadecimal digits describing
*   color component values. Optionally it can have # symbol at the beginning.
*
*   @return Created UIColor / NSColor or nil if hexString is in unsupported format.
*/
+ (PLColor *)colorWithHexString:(NSString *)hexString;

/**
*   Creates UIColor / NSColor object based on hexadecimal string with alpha component.
*
*   @param hexString String describing color in format RRGGBBAA or RGBA, where R,G,B,A are hexadecimal digits describing
*   color component values. Optionally it can have # symbol at the beginning.
*
*   @return Created UIColor / NSColor or nil if hexString is in unsupported format.
*/
+ (PLColor *)colorWithHexStringWithAlpha:(NSString *)hexString;

/**
*   Creates UIColor / NSColor object based on unsigned integer value without alpha component.
*
*   @param value Integer which bits are interpreted as RGB color component values:
*       bits[0..7] - blue component
*       bits[8..15] - green component
*       bits[16..23] - red component
*   This allows to create UIColor by passing integer in format 0xRRGGBB, where R,G,B are hexadecimal digits
*
*   @return Created UIColor / NSColor or nil if value is too big.
*/
+ (PLColor *)colorWithHexInteger:(NSUInteger)value;

/**
*   Creates UIColor / NSColor object based on unsigned integer value with alpha component.
*
*   @param value Integer which bits are interpreted as RGB color component values:
*       bits[0..7] - alpha component
*       bits[8..15] - blue component
*       bits[16..23] - green component
*       bits[24..31] - red component
*   This allows to create UIColor by passing integer in format 0xRRGGBBAA, where R,G,B,A are hexadecimal digits
*
*   @return Created UIColor / NSColor or nil if value is too big.
*/
+ (PLColor *)colorWithHexIntegerWithAlpha:(NSUInteger)value;

@end