#import "TChatBoxViewController.h"
#import "TChatBoxView.h"

@interface TChatBoxViewController ()<TChatBoxViewDelegate>

@property (nonatomic, strong) TChatBoxView *tCBoxView;

@end

@implementation TChatBoxViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[self view] addSubview:[self tCBoxView]];
}

#pragma mark - TChatBoxDelegate

- (void)tChatBoxView:(TChatBoxView *)tChatBoxView changeStatusFrom:(ChatBoxStatus)fromStatus to:(ChatBoxStatus)toStatus {
    if (toStatus == ChatBoxShowKeyboard) {
        if (_delegate && [_delegate respondsToSelector:@selector(tChatBoxVC:didChangeHeight:)]) {
            [_delegate tChatBoxVC:self didChangeHeight:350.f];
        }
    }
}

- (void)tChatBoxView:(TChatBoxView *)tChatBoxView changeTChatBoxViewHeight:(CGFloat)tChatBoxViewHeight {
    
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
