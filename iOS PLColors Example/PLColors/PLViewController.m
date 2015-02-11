//
//  Created by Michał Laskowski <michal.laskowski@polidea.com>
//  Copyright (c) 2015 Polidea Sp. z o.o.
//

#import "PLViewController.h"
#import "PLView.h"

@interface PLViewController ()

@end

@implementation PLViewController

- (void)loadView {
    self.view = [PLView new];
}

@end
