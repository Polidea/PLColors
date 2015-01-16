#import "PLViewController.h"
#import "PLView.h"

@interface PLViewController ()

@end

@implementation PLViewController

- (void)loadView {
    self.view = [PLView new];
}

@end
