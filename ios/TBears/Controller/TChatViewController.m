#import "TChatViewController.h"
#import "TChatMessageViewController.h"
#import "TChatBoxViewController.h"
#import "UIColor+Hex.h"

@interface TChatViewController ()<TChatBoxViewControllerDelegate>

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
    [navItem setRightBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"navBarMore"] style:UIBarButtonItemStylePlain target:self action:nil]];
}

#pragma mark - TChatBoxViewControllerDelegate

- (void)tChatBoxVC:(TChatBoxViewController *)tChatBoxVC didChangeHeight:(CGFloat)height {
    CGRect lastFrame = [[_tCBoxVC view] frame];
    [[_tCBoxVC view] setFrame:CGRectMake(lastFrame.origin.x, lastFrame.origin.y - height, lastFrame.size.width, lastFrame.size.height)];
}

#pragma mark - Getter

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
        [[_tCBoxVC view] setFrame:CGRectMake(0, kScreenHeight - (kChatBoxHeight + kSafeAreaBottomHeight), kScreenWidth, kScreenHeight)];
        [[_tCBoxVC view] setBackgroundColor:[UIColor colorWithHexString:@"#ffffff"]];
        [_tCBoxVC setDelegate:self];
    }
    return _tCBoxVC;
}

@end
