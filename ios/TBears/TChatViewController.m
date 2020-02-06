#import "TChatViewController.h"

@interface TChatViewController ()

@end

@implementation TChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *tChatView = [UIView new];
    [tChatView setBackgroundColor:[UIColor whiteColor]];
    [self setView:tChatView];
}

@end
