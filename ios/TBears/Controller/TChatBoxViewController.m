#import "TChatBoxViewController.h"
#import "TChatBoxView.h"

@interface TChatBoxViewController ()<TChatBoxDelegate>

@property (nonatomic, strong) TChatBoxView *tCBoxView;

@end

@implementation TChatBoxViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[self view] addSubview:[self tCBoxView]];
}

#pragma mark - TChatBoxDelegate
- (void)chatBox:(TChatBoxView *)chatBox changeStatusFrom:(ChatBoxStatus)fromStatus to:(ChatBoxStatus)toStatus {
    if (toStatus == ChatBoxShowKeyboard) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        });
    }
}

#pragma mark - Getter

- (TChatBoxView *) tCBoxView {
    if (_tCBoxView == nil) {
        _tCBoxView =  [[TChatBoxView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kChatBoxHeight)];
        [_tCBoxView setDelegate:self];
    }
    return _tCBoxView;
}

@end
