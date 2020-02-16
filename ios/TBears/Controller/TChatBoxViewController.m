#import "TChatBoxViewController.h"
#import "TChatBoxView.h"

@interface TChatBoxViewController ()<TChatBoxViewDelegate>

@property (nonatomic, strong) TChatBoxView *tCBoxView;

@end

@implementation TChatBoxViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    [[self view] addSubview:[self tCBoxView]];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardAction:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardAction:) name:UIKeyboardWillHideNotification object:nil];
}

- (BOOL) resignFirstResponder {
    [[self tCBoxView] resignFirstResponder];
    return [super resignFirstResponder];
}

#pragma mark - TChatBoxDelegate

- (void) tChatBoxView:(TChatBoxView *)tChatBoxView changeStatusFrom:(ChatBoxStatus)fromStatus to:(ChatBoxStatus)toStatus {
    if (toStatus == ChatBoxShowKeyboard) {    
    } else if (toStatus == ChatBoxShowFaceStatus) {
    }
}

- (void) tChatBoxView:(TChatBoxView *)tChatBoxView changeTChatBoxViewHeight:(CGFloat)tChatBoxViewHeight {
    
}

#pragma mark - Methods

- (void) keyboardAction:(NSNotification*)sender {
    NSDictionary *useInfo = [sender userInfo];
    NSValue *value = [useInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGFloat keyboardHeight = [value CGRectValue].size.height;
    CGFloat tChatBoxHeight = 0.f;
    
    if ([[sender name] isEqualToString:UIKeyboardWillShowNotification]) {
        tChatBoxHeight = kChatBoxHeight + keyboardHeight;
    } else {
        tChatBoxHeight = kChatBoxHeight + kSafeAreaBottomHeight;
    }
    
    if (_delegate && [_delegate respondsToSelector:@selector(tChatBoxVC:didChangeHeight:)]) {
        [_delegate tChatBoxVC:self didChangeHeight:tChatBoxHeight];
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
