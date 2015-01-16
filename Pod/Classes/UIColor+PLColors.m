#import "UIColor+PLColors.h"


@implementation UIColor (PLColors)

+ (UIColor *)colorWithHexString:(NSString *)hexString {
    if (hexString.length == 3 || (hexString.length == 4 && [hexString characterAtIndex:0] == '#')) {
        hexString = [hexString stringByAppendingString:@"F"];
    }
    else {
        hexString = [hexString stringByAppendingString:@"FF"];
    }

    return [UIColor colorWithHexStringWithAlpha:hexString];
}

+ (UIColor *)colorWithHexStringWithAlpha:(NSString *)hexString {
    if (hexString.length > 0 && [hexString characterAtIndex:0] == '#') {
        hexString = [hexString substringFromIndex:1];
    }

    if (hexString.length != 4 && hexString.length != 8) {
        return nil;
    }

    if (hexString.length == 4) {
        unichar char0 = [hexString characterAtIndex:0];
        unichar char1 = [hexString characterAtIndex:1];
        unichar char2 = [hexString characterAtIndex:2];
        unichar char3 = [hexString characterAtIndex:3];
        hexString = [NSString stringWithFormat:@"%c%c%c%c%c%c%c%c", char0, char0, char1, char1, char2, char2, char3, char3];
    }

    NSString *componentPattern = @"[0-9A-Fa-f]{2}";
    NSString *pattern = [NSString stringWithFormat:@"^(%@)(%@)(%@)(%@)$", componentPattern, componentPattern, componentPattern, componentPattern];

    NSError *error;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern
                                                                           options:0
                                                                             error:&error];
    NSArray *matches = [regex matchesInString:hexString options:0 range:NSMakeRange(0, hexString.length)];
    if (matches.count != 1) {
        return nil;
    }

    NSTextCheckingResult *result = matches[0];
    if (result.numberOfRanges != 5) {
        return nil;
    }

    CGFloat red = [UIColor normalizedFloatColorComponentFromHexString:[hexString substringWithRange:[result rangeAtIndex:1]]];
    CGFloat green = [UIColor normalizedFloatColorComponentFromHexString:[hexString substringWithRange:[result rangeAtIndex:2]]];
    CGFloat blue = [UIColor normalizedFloatColorComponentFromHexString:[hexString substringWithRange:[result rangeAtIndex:3]]];
    CGFloat alpha = [UIColor normalizedFloatColorComponentFromHexString:[hexString substringWithRange:[result rangeAtIndex:4]]];

    if (red < 0.f || green < 0.f || blue < 0.f || alpha < 0.f) {
        return nil;
    }

    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor *)colorWithHexInteger:(NSUInteger)value {
    return nil;
}

+ (UIColor *)colorWithHexIntegerWithAlpha:(NSUInteger)value {
    return nil;
}


+ (CGFloat)normalizedFloatColorComponentFromHexString:(NSString *)hexString {
    NSScanner *scanner = [NSScanner scannerWithString:[NSString stringWithFormat:@"0x%@", hexString]];
    float floatValue;
    BOOL result = [scanner scanHexFloat:&floatValue];
    if (!result || floatValue > 255.0f) {
        return -1.0f;
    }

    return floatValue / 255.0f;
}


@end