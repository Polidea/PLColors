//
//  Created by Michał Laskowski <michal.laskowski@polidea.com>
//  Copyright (c) 2015 Polidea Sp. z o.o.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

CGFloat normalizedFloatColorValue(NSInteger value);
BOOL testColorEquality(UIColor *firstColor, UIColor *secondColor);
UIColor* colorForIntegersComponents(NSUInteger red, NSUInteger green, NSUInteger blue, NSUInteger alpha);