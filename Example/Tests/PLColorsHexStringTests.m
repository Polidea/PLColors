//
//  Created by Michał Laskowski <michal.laskowski@polidea.com>
//  Copyright (c) 2015 Polidea Sp. z o.o.
//

#import <UIKit/UIKit.h>
#import "UIColor+PLColors.h"
#import "PLTestsHelpers.h"

SPEC_BEGIN(PLColorsHexString)

    describe(@"PLColors tests for hex string version", ^{

        context(@"for Hex string without alpha", ^{
            it(@"correct UIColor for string without # ('224411')", ^{
                UIColor *correctColor = colorForIntegersComponents(34, 68, 17, 255);
                UIColor *calculateValue = [UIColor colorWithHexString:@"224411"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with # ('#224411')", ^{
                UIColor *correctColor = colorForIntegersComponents(34, 68, 17, 255);
                UIColor *calculateValue = [UIColor colorWithHexString:@"#224411"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with small letters ('aabbcc')", ^{
                UIColor *correctColor = colorForIntegersComponents(170, 187, 204, 255);
                UIColor *calculateValue = [UIColor colorWithHexString:@"aabbcc"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with big letters ('AABBCC')", ^{
                UIColor *correctColor = colorForIntegersComponents(170, 187, 204, 255);
                UIColor *calculateValue = [UIColor colorWithHexString:@"AABBCC"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with small and big letters ('aaBbcC')", ^{
                UIColor *correctColor = colorForIntegersComponents(170, 187, 204, 255);
                UIColor *calculateValue = [UIColor colorWithHexString:@"aaBbcC"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with # and letters ('#AabBcC')", ^{
                UIColor *correctColor = colorForIntegersComponents(170, 187, 204, 255);
                UIColor *calculateValue = [UIColor colorWithHexString:@"#AabBcC"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with digits and letters ('1abBf3')", ^{
                UIColor *correctColor = colorForIntegersComponents(26, 187, 243, 255);
                UIColor *calculateValue = [UIColor colorWithHexString:@"1abBf3"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with three digits ('241')", ^{
                UIColor *correctColor = colorForIntegersComponents(34, 68, 17, 255);
                UIColor *calculateValue = [UIColor colorWithHexString:@"241"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with three letters ('abc')", ^{
                UIColor *correctColor = colorForIntegersComponents(170, 187, 204, 255);
                UIColor *calculateValue = [UIColor colorWithHexString:@"abc"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with # and three characters ('#1F4')", ^{
                UIColor *correctColor = colorForIntegersComponents(17, 255, 68, 255);
                UIColor *calculateValue = [UIColor colorWithHexString:@"#1F4"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"nil for empty string", ^{
                UIColor *calculateColor = [UIColor colorWithHexString:@""];
                [[calculateColor should] beNil];
            });

            it(@"nil for nil string", ^{
                UIColor *calculateColor = [UIColor colorWithHexString:nil];
                [[calculateColor should] beNil];
            });

            it(@"nil for string with not valid characters", ^{
                UIColor *calculateColor = [UIColor colorWithHexString:@"q/?()]"];
                [[calculateColor should] beNil];
            });

            it(@"nil for string with not valid characters started from #", ^{
                UIColor *calculateColor = [UIColor colorWithHexString:@"#q/?()]"];
                [[calculateColor should] beNil];
            });

            it(@"nil for too short string", ^{
                UIColor *calculateColor = [UIColor colorWithHexString:@"11bba"];
                [[calculateColor should] beNil];
            });

            it(@"nil for too long string", ^{
                UIColor *calculateColor = [UIColor colorWithHexString:@"1124ba3"];
                [[calculateColor should] beNil];
            });
        });

        context(@"for Hex string with alpha", ^{
            it(@"correct UIColor for string without # ('22441155')", ^{
                UIColor *correctColor = colorForIntegersComponents(34, 68, 17, 85);
                UIColor *calculateValue = [UIColor colorWithHexStringWithAlpha:@"22441155"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with # ('#22441155')", ^{
                UIColor *correctColor = colorForIntegersComponents(34, 68, 17, 85);
                UIColor *calculateValue = [UIColor colorWithHexStringWithAlpha:@"#22441155"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with small letters ('aabbccdd')", ^{
                UIColor *correctColor = colorForIntegersComponents(170, 187, 204, 221);
                UIColor *calculateValue = [UIColor colorWithHexStringWithAlpha:@"aabbccdd"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with big letters ('AABBCCDD')", ^{
                UIColor *correctColor = colorForIntegersComponents(170, 187, 204, 221);
                UIColor *calculateValue = [UIColor colorWithHexStringWithAlpha:@"AABBCCDD"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with small and big letters ('aaBbcCDd')", ^{
                UIColor *correctColor = colorForIntegersComponents(170, 187, 204, 221);
                UIColor *calculateValue = [UIColor colorWithHexStringWithAlpha:@"aaBbcCDd"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with # and letters ('#AabBcCDd')", ^{
                UIColor *correctColor = colorForIntegersComponents(170, 187, 204, 221);
                UIColor *calculateValue = [UIColor colorWithHexStringWithAlpha:@"#AabBcCDd"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with digits and letters ('1abBf34D')", ^{
                UIColor *correctColor = colorForIntegersComponents(26, 187, 243, 77);
                UIColor *calculateValue = [UIColor colorWithHexStringWithAlpha:@"1abBf34D"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with four digits ('2412')", ^{
                UIColor *correctColor = colorForIntegersComponents(34, 68, 17, 34);
                UIColor *calculateValue = [UIColor colorWithHexStringWithAlpha:@"2412"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with four letters ('abcdd')", ^{
                UIColor *correctColor = colorForIntegersComponents(170, 187, 204, 221);
                UIColor *calculateValue = [UIColor colorWithHexStringWithAlpha:@"abcd"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for string with # and four characters ('#1F43')", ^{
                UIColor *correctColor = colorForIntegersComponents(17, 255, 68, 51);
                UIColor *calculateValue = [UIColor colorWithHexStringWithAlpha:@"#1F43"];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"nil for empty string", ^{
                UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@""];
                [[calculateColor should] beNil];
            });

            it(@"nil for nil string", ^{
                UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:nil];
                [[calculateColor should] beNil];
            });

            it(@"nil for string with not valid characters", ^{
                UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"q/?()]^%"];
                [[calculateColor should] beNil];
            });

            it(@"nil for string with not valid characters started from #", ^{
                UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#q/?()]^"];
                [[calculateColor should] beNil];
            });

            it(@"nil for too short string", ^{
                UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"11bba4f"];
                [[calculateColor should] beNil];
            });

            it(@"nil for too long string", ^{
                UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"1124ba34e"];
                [[calculateColor should] beNil];
            });
        });

        context(@"for standard colors", ^{
            context(@"without alpha component", ^{
                it(@"black color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#000000"];
                    UIColor *correctColor = [UIColor blackColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"dark gray color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#555555"];
                    UIColor *correctColor = [UIColor darkGrayColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"light gray color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#AAAAAA"];
                    UIColor *correctColor = [UIColor lightGrayColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"white color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#FFFFFF"];
                    UIColor *correctColor = [UIColor whiteColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"gray color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#7F7F7F"];
                    UIColor *correctColor = [UIColor grayColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"red color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#FF0000"];
                    UIColor *correctColor = [UIColor redColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"green color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#00FF00"];
                    UIColor *correctColor = [UIColor greenColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"blue color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#0000FF"];
                    UIColor *correctColor = [UIColor blueColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"cyan color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#00FFFF"];
                    UIColor *correctColor = [UIColor cyanColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"yellow color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#FFFF00"];
                    UIColor *correctColor = [UIColor yellowColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"magenta color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#FF00FF"];
                    UIColor *correctColor = [UIColor magentaColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"orange color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#FF7F00"];
                    UIColor *correctColor = [UIColor orangeColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"purple color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#7F007F"];
                    UIColor *correctColor = [UIColor purpleColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"brown color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexString:@"#996633"];
                    UIColor *correctColor = [UIColor brownColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });
            });

            context(@"with alpha component", ^{
                it(@"black color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#000000FF"];
                    UIColor *correctColor = [UIColor blackColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"dark gray color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#555555FF"];
                    UIColor *correctColor = [UIColor darkGrayColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"light gray color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#AAAAAAFF"];
                    UIColor *correctColor = [UIColor lightGrayColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"white color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#FFFFFFFF"];
                    UIColor *correctColor = [UIColor whiteColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"gray color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#7F7F7FFF"];
                    UIColor *correctColor = [UIColor grayColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"red color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#FF0000FF"];
                    UIColor *correctColor = [UIColor redColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"green color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#00FF00FF"];
                    UIColor *correctColor = [UIColor greenColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"blue color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#0000FFFF"];
                    UIColor *correctColor = [UIColor blueColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"cyan color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#00FFFFFF"];
                    UIColor *correctColor = [UIColor cyanColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"yellow color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#FFFF00FF"];
                    UIColor *correctColor = [UIColor yellowColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"magenta color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#FF00FFFF"];
                    UIColor *correctColor = [UIColor magentaColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"orange color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#FF7F00FF"];
                    UIColor *correctColor = [UIColor orangeColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"purple color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#7F007FFF"];
                    UIColor *correctColor = [UIColor purpleColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"brown color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#996633FF"];
                    UIColor *correctColor = [UIColor brownColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"clear color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexStringWithAlpha:@"#00000000"];
                    UIColor *correctColor = [UIColor clearColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });
            });
        });
    });

SPEC_END
