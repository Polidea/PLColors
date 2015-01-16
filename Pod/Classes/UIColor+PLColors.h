#import <Foundation/Foundation.h>

@interface UIColor (PLColors)

/**
*   Creates UIColor object based on hexadecimal string without alpha component.
*
*   @param hexString string describing color in format RRGGBB or RGB, where R,G,B are hexadecimal digits describing
*   color component values. Optionally it can have # symbol at the beginning.
*
*   @return Created UIColor or nil if hexString is in unsupported format.
*/
+ (UIColor *)colorWithHexString:(NSString *)hexString;

/**
*   Creates UIColor object based on hexadecimal string with alpha component.
*
*   @param hexString string describing color in format RRGGBBAA or RGBA, where R,G,B,A are hexadecimal digits describing
*   color component values. Optionally it can have # symbol at the beginning.
*
*   @return Created UIColor or nil if hexString is in unsupported format.
*/
+ (UIColor *)colorWithHexStringWithAlpha:(NSString *)hexString;

@end