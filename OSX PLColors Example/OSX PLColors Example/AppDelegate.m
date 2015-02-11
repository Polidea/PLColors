//
//  AppDelegate.m
//  OSX PLColors Example
//
//  Created by Michał Laskowski on 11/02/15.
//  Copyright (c) 2015 Polidea Sp. z o.o. All rights reserved.
//

#import "AppDelegate.h"
#import "NSColor+PLColors.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *label;

@end

@implementation AppDelegate {
    NSTimer *_timer;
    NSUInteger _step;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.8f target:self selector:@selector(timerEvent) userInfo:nil repeats:YES];
    self.window.backgroundColor = [NSColor whiteColor];
    _label.backgroundColor = [NSColor colorWithHexInteger:0x000000];
}

- (void)timerEvent {

    NSColor *color;
    switch (_step) {
        case 0:
            color = [NSColor colorWithHexString:@"000"];
            break;
        case 1:
            color = [NSColor colorWithHexString:@"FF0000"];
            break;
        case 2:
            color = [NSColor colorWithHexInteger:0x04A0FF];
            break;
        case 3:
            color = [NSColor colorWithHexString:@"00FF00"];
            break;
        case 4:
            color = [NSColor colorWithHexStringWithAlpha:@"#0000007F"];
            break;
        case 5:
            color = [NSColor colorWithHexIntegerWithAlpha:0x000FF7F];
            break;
        default:
            break;
    }
    _label.backgroundColor = color;
    
    _step++;
    if (_step == 6) {
        _step = 0;
    }
}

@end
