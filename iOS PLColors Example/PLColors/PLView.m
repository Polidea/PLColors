//
//  Created by Michał Laskowski <michal.laskowski@polidea.com>
//  Copyright (c) 2015 Polidea Sp. z o.o.
//

#import "PLView.h"
#import "PLColors.h"


@implementation PLView {
    UIView *_redSquare;
    UIView *_blueSquare;
    UIView *_greenSquare;
    UIView *_transparentSquare;
    UIView *_secondTransparentSquare;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithHexString:@"FFF"];

        _redSquare = [UIView new];
        _redSquare.translatesAutoresizingMaskIntoConstraints = NO;
        _redSquare.backgroundColor = [UIColor colorWithHexString:@"FF0000"];
        [self addSubview:_redSquare];

        _blueSquare = [UIView new];
        _blueSquare.translatesAutoresizingMaskIntoConstraints = NO;
        _blueSquare.backgroundColor = [UIColor colorWithHexInteger:0x0000FF];
        [self addSubview:_blueSquare];

        _greenSquare = [UIView new];
        _greenSquare.translatesAutoresizingMaskIntoConstraints = NO;
        _greenSquare.backgroundColor = [UIColor colorWithHexString:@"00FF00"];
        [self addSubview:_greenSquare];

        _transparentSquare = [UIView new];
        _transparentSquare.translatesAutoresizingMaskIntoConstraints = NO;
        _transparentSquare.backgroundColor = [UIColor colorWithHexStringWithAlpha:@"#0000007F"];
        [self addSubview:_transparentSquare];

        _secondTransparentSquare = [UIView new];
        _secondTransparentSquare.translatesAutoresizingMaskIntoConstraints = NO;
        _secondTransparentSquare.backgroundColor = [UIColor colorWithHexIntegerWithAlpha:0x0000FF7F];
        [self addSubview:_secondTransparentSquare];

        [self createConstraints];
    }
    return self;
}

- (void)createConstraints {
    // Red square
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_redSquare
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1.0
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_redSquare
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1.0
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_redSquare
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:0.4
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_redSquare
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:_redSquare
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:1.0
                                                      constant:0]];

    // Blue square
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_blueSquare
                                                     attribute:NSLayoutAttributeLeft
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1.0
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_blueSquare
                                                     attribute:NSLayoutAttributeBottom
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1.0
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_blueSquare
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:_redSquare
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:1.0
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_blueSquare
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:_redSquare
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:1.0
                                                      constant:0]];

    // Green square
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_greenSquare
                                                     attribute:NSLayoutAttributeRight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1.0
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_greenSquare
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1.0
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_greenSquare
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:_redSquare
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:1.0
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_greenSquare
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:_redSquare
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:1.0
                                                      constant:0]];

    // Transparent square
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_transparentSquare
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1.0
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_transparentSquare
                                                     attribute:NSLayoutAttributeCenterY
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1.0
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_transparentSquare
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:0.5
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_transparentSquare
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:_transparentSquare
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:1.0
                                                      constant:0]];

    // Second transparent square
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_secondTransparentSquare
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:_transparentSquare
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1.0
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_secondTransparentSquare
                                                     attribute:NSLayoutAttributeTop
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:_transparentSquare
                                                     attribute:NSLayoutAttributeBottom
                                                    multiplier:1.0
                                                      constant:-50]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_secondTransparentSquare
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:_transparentSquare
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:1.0
                                                      constant:0]];

    [self addConstraint:[NSLayoutConstraint constraintWithItem:_secondTransparentSquare
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:_secondTransparentSquare
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:0.5
                                                      constant:0]];
}

@end