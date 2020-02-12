#import "TChatViewController.h"
#import "TChatMessageViewController.h"
#import "TChatBoxViewController.h"

@interface TChatViewController ()

@property (nonatomic, strong) TChatMessageViewController *tCMessageVC;
@property (nonatomic, strong) TChatBoxViewController *tCBoxVC;

@end

@implementation TChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigationItem];
    
    [self addChildViewController:[self tCMessageVC]];
    [[self view] addSubview:[[self tCMessageVC] view]];
    
    [self addChildViewController:[self tCBoxVC]];
    [[self view] addSubview:[[self tCBoxVC] view]];
}

- (void) setNavigationItem {
    UINavigationItem *navItem = [self navigationItem];
    
    [navItem setTitle:@"聊天"];
    [navItem setRightBarButtonItem:[[UIBarButtonItem alloc] initWithTitle:@"更多" style:UIBarButtonItemStylePlain target:self action:nil]];
}

- (TChatMessageViewController *) tCMessageVC {
    if (_tCMessageVC == nil) {
        _tCMessageVC = [TChatMessageViewController new];
        [[_tCMessageVC view] setFrame:CGRectMake(0, kSafeAreaTopHeight, kScreenWidth, kScreenHeight - kSafeAreaTopHeight)];
    }
    return _tCMessageVC;
}

- (TChatBoxViewController *) tCBoxVC {
    if (_tCBoxVC == nil) {
        _tCBoxVC = [TChatBoxViewController new];
        [[_tCBoxVC view] setFrame:CGRectMake(0, kScreenHeight - kTabbarHeight, kScreenWidth, kScreenHeight)];
    }
    return _tCBoxVC;
}

@end
