//
//  Created by Michał Laskowski <michal.laskowski@polidea.com>
//  Copyright (c) 2015 Polidea Sp. z o.o.
//

#import "PLTestsHelpers.h"

CGFloat normalizedFloatColorValue(NSInteger value) {
    CGFloat res = MAX((CGFloat)value / 255.0f, 0.0f);
    res = MIN(res, 1.0f);

    return res;
};

BOOL testColorEquality(UIColor *firstColor, UIColor *secondColor) {
    if (firstColor == nil || secondColor == nil) {
        return NO;
    }

    CGFloat firstComponents[4];
    CGFloat secondComponents[4];
    [firstColor getRed:firstComponents green:(firstComponents + 1) blue:(firstComponents + 2) alpha:(firstComponents + 3)];
    [secondColor getRed:secondComponents green:(secondComponents + 1) blue:(secondComponents + 2) alpha:(secondComponents + 3)];

    CGFloat epsilon = 1.0f / 256.0f;
    for (NSUInteger i = 0; i < 4; i++) {
        if (fabs(firstComponents[i] - secondComponents[i]) > epsilon) {
            return NO;
        }
    }

    return YES;
}

UIColor* colorForIntegersComponents(NSUInteger red, NSUInteger green, NSUInteger blue, NSUInteger alpha) {
    return [UIColor colorWithRed:normalizedFloatColorValue(red)
                           green:normalizedFloatColorValue(green)
                            blue:normalizedFloatColorValue(blue)
                           alpha:normalizedFloatColorValue(alpha)];
}
