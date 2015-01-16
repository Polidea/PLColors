#import <UIKit/UIKit.h>
#import "UIColor+PLColors.h"
#import "PLTestsHelpers.h"

SPEC_BEGIN(PLColorsHexInteger)

    describe(@"PLColors tests for hex integer version", ^{

        context(@"for integer without alpha", ^{
            it(@"correct UIColor for hex integer ('0x224411')", ^{
                UIColor *correctColor = colorForIntegersComponents(34, 68, 17, 255);
                UIColor *calculateValue = [UIColor colorWithHexInteger:0x224411];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for hex integer with letters ('0xaabbcc')", ^{
                UIColor *correctColor = colorForIntegersComponents(170, 187, 204, 255);
                UIColor *calculateValue = [UIColor colorWithHexInteger:0xaabbcc];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for hex integer with digits and letters ('0x1abBf3')", ^{
                UIColor *correctColor = colorForIntegersComponents(26, 187, 243, 255);
                UIColor *calculateValue = [UIColor colorWithHexInteger:0x1abBf3];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for hex integer started from 0 ('0x0000f3')", ^{
                UIColor *correctColor = colorForIntegersComponents(0, 0, 243, 255);
                UIColor *calculateValue = [UIColor colorWithHexInteger:0x0000f3];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for hex integer without leading 0 ('0xf3')", ^{
                UIColor *correctColor = colorForIntegersComponents(0, 0, 243, 255);
                UIColor *calculateValue = [UIColor colorWithHexInteger:0xf3];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"nil for too big hex integer", ^{
                UIColor *calculateColor = [UIColor colorWithHexInteger:0x1abf379];
                [[calculateColor should] beNil];
            });
        });

        context(@"for integer with alpha", ^{
            it(@"correct UIColor for hex integer ('0x22441177')", ^{
                UIColor *correctColor = colorForIntegersComponents(34, 68, 17, 119);
                UIColor *calculateValue = [UIColor colorWithHexIntegerWithAlpha:0x22441177];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for hex integer with letters ('0xaabbcc7F')", ^{
                UIColor *correctColor = colorForIntegersComponents(170, 187, 204, 127);
                UIColor *calculateValue = [UIColor colorWithHexIntegerWithAlpha:0xaabbcc7F];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for hex integer with digits and letters ('0x1abBf37f')", ^{
                UIColor *correctColor = colorForIntegersComponents(26, 187, 243, 127);
                UIColor *calculateValue = [UIColor colorWithHexIntegerWithAlpha:0x1abBf37f];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for hex integer started from 0 ('0x0000f370')", ^{
                UIColor *correctColor = colorForIntegersComponents(0, 0, 243, 112);
                UIColor *calculateValue = [UIColor colorWithHexIntegerWithAlpha:0x0000f370];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });

            it(@"correct UIColor for hex integer without leading 0 ('0xf390')", ^{
                UIColor *correctColor = colorForIntegersComponents(0, 0, 243, 144);
                UIColor *calculateValue = [UIColor colorWithHexIntegerWithAlpha:0xf390];

                [[theValue(testColorEquality(correctColor, calculateValue)) should] equal:theValue(YES)];
            });
        });

        context(@"for standard colors", ^{
            context(@"without alpha component", ^{
                it(@"black color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0x000000];
                    UIColor *correctColor = [UIColor blackColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"dark gray color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0x555555];
                    UIColor *correctColor = [UIColor darkGrayColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"light gray color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0xAAAAAA];
                    UIColor *correctColor = [UIColor lightGrayColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"white color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0xFFFFFF];
                    UIColor *correctColor = [UIColor whiteColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"gray color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0x7F7F7F];
                    UIColor *correctColor = [UIColor grayColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"red color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0xFF0000];
                    UIColor *correctColor = [UIColor redColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"green color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0x00FF00];
                    UIColor *correctColor = [UIColor greenColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"blue color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0x0000FF];
                    UIColor *correctColor = [UIColor blueColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"cyan color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0x00FFFF];
                    UIColor *correctColor = [UIColor cyanColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"yellow color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0xFFFF00];
                    UIColor *correctColor = [UIColor yellowColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"magenta color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0xFF00FF];
                    UIColor *correctColor = [UIColor magentaColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"orange color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0xFF7F00];
                    UIColor *correctColor = [UIColor orangeColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"purple color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0x7F007F];
                    UIColor *correctColor = [UIColor purpleColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"brown color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexInteger:0x996633];
                    UIColor *correctColor = [UIColor brownColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });
            });

            context(@"with alpha component", ^{
                it(@"black color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0x000000FF];
                    UIColor *correctColor = [UIColor blackColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"dark gray color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0x555555FF];
                    UIColor *correctColor = [UIColor darkGrayColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"light gray color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0xAAAAAAFF];
                    UIColor *correctColor = [UIColor lightGrayColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"white color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0xFFFFFFFF];
                    UIColor *correctColor = [UIColor whiteColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"gray color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0x7F7F7FFF];
                    UIColor *correctColor = [UIColor grayColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"red color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0xFF0000FF];
                    UIColor *correctColor = [UIColor redColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"green color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0x00FF00FF];
                    UIColor *correctColor = [UIColor greenColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"blue color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0x0000FFFF];
                    UIColor *correctColor = [UIColor blueColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"cyan color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0x00FFFFFF];
                    UIColor *correctColor = [UIColor cyanColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"yellow color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0xFFFF00FF];
                    UIColor *correctColor = [UIColor yellowColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"magenta color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0xFF00FFFF];
                    UIColor *correctColor = [UIColor magentaColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"orange color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0xFF7F00FF];
                    UIColor *correctColor = [UIColor orangeColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"purple color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0x7F007FFF];
                    UIColor *correctColor = [UIColor purpleColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"brown color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0x996633FF];
                    UIColor *correctColor = [UIColor brownColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });

                it(@"clear color", ^{
                    UIColor *calculateColor = [UIColor colorWithHexIntegerWithAlpha:0x00000000];
                    UIColor *correctColor = [UIColor clearColor];
                    [[theValue(testColorEquality(correctColor, calculateColor)) should] equal:theValue(YES)];
                });
            });
        });
    });

SPEC_END
