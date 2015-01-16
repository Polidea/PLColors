#import "PLView.h"
#import "UIColor+PLColors.h"


@implementation PLView {
    UIView *_redSquare;
    UIView *_blueSquare;
    UIView *_greenSquare;
    UIView *_transparentSquare;
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
        _blueSquare.backgroundColor = [UIColor colorWithHexString:@"#0000FF"];
        [self addSubview:_blueSquare];

        _greenSquare = [UIView new];
        _greenSquare.translatesAutoresizingMaskIntoConstraints = NO;
        _greenSquare.backgroundColor = [UIColor colorWithHexString:@"00FF00"];
        [self addSubview:_greenSquare];

        _transparentSquare = [UIView new];
        _transparentSquare.translatesAutoresizingMaskIntoConstraints = NO;
        _transparentSquare.backgroundColor = [UIColor colorWithHexStringWithAlpha:@"#00000088"];
        [self addSubview:_transparentSquare];

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
}

@end