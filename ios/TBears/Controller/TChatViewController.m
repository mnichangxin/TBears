#import "TChatViewController.h"

@implementation TChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationItem *navItem = [self navigationItem];
    
    [navItem setTitle:@"聊天"];
    [navItem setRightBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"更多" style:UIBarButtonItemStylePlain target:self action:nil]];
    
    UIView *tChatView = [UIView new];
    
    [tChatView setBackgroundColor:[UIColor whiteColor]];
    [self setView:tChatView];
}

@end
