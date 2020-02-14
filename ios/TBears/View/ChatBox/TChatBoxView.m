#import "TChatBoxView.h"
#import "UIColor+Hex.h"

#define  kTextViewWidth   kScreenWidth * 0.9
#define  kTextViewHeight  kChatBoxHeight * 0.38
#define  kTextViewMargin  kScreenWidth * 0.05
#define  kToolBarHeight   kChatBoxHeight * 0.48

@interface TChatBoxView ()<UITextViewDelegate>

@property (nonatomic, strong) UIView *topLine;
@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UIButton *sendButton;
@property (nonatomic, assign) ChatBoxStatus status;

@end

@implementation TChatBoxView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor colorWithHexString:@"#ffffff"]];
        [self addSubview:[self topLine]];
        [self addSubview:[self textView]];
        [self setStatus:ChatBoxNotingStatus];
    }
    return self;
}

#pragma mark - UITextViewDelegate

- (void)textViewDidBeginEditing:(UITextView *)textView {
    ChatBoxStatus fromStatus = [self status];
    
    [self setStatus:ChatBoxShowKeyboard];
    
    if (_delegate && [_delegate respondsToSelector:@selector(chatBox:changeStatusFrom:to:)]) {
        [_delegate chatBox:self changeStatusFrom:fromStatus to:[self status]];
    }
}

- (void)textViewDidChange:(UITextView *)textView {
    NSLog(@"Did change...");
}

#pragma mark - Getter

- (UIView *) topLine {
    if (_topLine == nil) {
        _topLine = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, .5)];
        [_topLine setBackgroundColor:[UIColor colorWithHexString:@"#f2f2f2"]];
    }
    return _topLine;
}

- (UITextView *) textView {
    if (_textView == nil) {
        _textView = [[UITextView alloc] initWithFrame:CGRectMake(kTextViewMargin, kChatBoxHeight - kTextViewHeight - kToolBarHeight,                                                            kTextViewWidth, kTextViewHeight)];
        [_textView setBackgroundColor:[UIColor colorWithHexString:@"#f2f2f2"]];
        [_textView setTextColor:[UIColor colorWithHexString:@"#333333"]];
        [_textView setTextAlignment:NSTextAlignmentLeft];
        [_textView setFont:[UIFont systemFontOfSize:16.f]];
        [_textView setContentInset:UIEdgeInsetsMake(kTextViewHeight * 0.1, kTextViewWidth * 0.03, 0, kTextViewWidth * 0.03)];
        [_textView.layer setBorderWidth:1.f];
        [_textView.layer setBorderColor:[[UIColor colorWithHexString:@"#f2f2f2"] CGColor]];
        [_textView.layer setCornerRadius:20.f];
        [_textView setDelegate:self];
    }
    return _textView;
}

- (UIButton *) sendButton {
    if (_sendButton == nil) {
        _sendButton = [[UIButton alloc] initWithFrame:CGRectMake(kTextViewMargin + kTextViewWidth + kScreenWidth * 0.035, kChatBoxHeight - kTextViewHeight - kToolBarHeight + kTextViewHeight * 0.1, kScreenWidth * 0.15, kTextViewHeight * 0.83)];
        [_sendButton setTitle:@"发送" forState:UIControlStateNormal];
        [_sendButton setTintColor:[UIColor colorWithHexString:@"#ffffff"]];
        [_sendButton setBackgroundColor:[UIColor colorWithHexString:@"#564F5F"]];
        [_sendButton.layer setCornerRadius:18.f];
    }
    return _sendButton;
}

@end
