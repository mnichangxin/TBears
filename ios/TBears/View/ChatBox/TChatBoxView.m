#import "TChatBoxView.h"
#import "UIColor+Hex.h"

#define  kTextViewWidth         kScreenWidth * 0.9
#define  kTextViewHeight        kChatBoxHeight * 0.38
#define  kTextViewMarginLeft    kScreenWidth * 0.05
#define  kTextViewMarginTop     kChatBoxHeight * 0.137

#define  kToolBarWidth          kScreenWidth * 0.9
#define  kToolBarHeight         kChatBoxHeight * 0.48
#define  kToolBarPaddingTop     kToolBarHeight * 0.28
#define  kToolBarPaddingLeft    kToolBarWidth * 0.07
#define  kToolBarItemSize       kToolBarHeight * 0.54
#define  kToolBarItemMarginLeft kToolBarWidth * 0.265

@interface TChatBoxView ()<UITextViewDelegate>

@property (nonatomic, strong) UIView *topLine;
@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) UIButton *sendButton;
@property (nonatomic, strong) UIView *toolBar;
@property (nonatomic, strong) UIButton *imageButton;
@property (nonatomic, strong) UIButton *voiceButton;
@property (nonatomic, strong) UIButton *faceButton;
@property (nonatomic, strong) UIButton *moreButton;
@property (nonatomic, assign) ChatBoxStatus status;

@end

@implementation TChatBoxView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor colorWithHexString:@"#ffffff"]];
        [self addSubview:[self topLine]];
        [self addSubview:[self textView]];
        [self addSubview:[self toolBar]];
        [self setStatus:ChatBoxNotingStatus];
    }
    return self;
}

#pragma mark - UITextViewDelegate

- (void)textViewDidBeginEditing:(UITextView *)textView {
    ChatBoxStatus fromStatus = [self status];
    
    [self setStatus:ChatBoxShowKeyboard];
    
    if (_delegate && [_delegate respondsToSelector:@selector(tChatBoxView:changeStatusFrom:to:)]) {
        [_delegate tChatBoxView:self changeStatusFrom:fromStatus to:[self status]];
    }
}

- (void)textViewDidChange:(UITextView *)textView {
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
        _textView = [[UITextView alloc] initWithFrame:CGRectMake(kTextViewMarginLeft, kTextViewMarginTop, kTextViewWidth, kTextViewHeight)];
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
        _sendButton = [[UIButton alloc] initWithFrame:CGRectMake(kTextViewMarginLeft + kTextViewWidth + kScreenWidth * 0.035, kChatBoxHeight - kTextViewHeight - kToolBarHeight + kTextViewHeight * 0.1, kScreenWidth * 0.15, kTextViewHeight * 0.83)];
        [_sendButton setTitle:@"发送" forState:UIControlStateNormal];
        [_sendButton setTintColor:[UIColor colorWithHexString:@"#ffffff"]];
        [_sendButton setBackgroundColor:[UIColor colorWithHexString:@"#564F5F"]];
        [_sendButton.layer setCornerRadius:18.f];
    }
    return _sendButton;
}

- (UIView *) toolBar {
    if (_toolBar == nil) {
        _toolBar = [[UIView alloc] initWithFrame:CGRectMake(kTextViewMarginLeft, kTextViewMarginTop + kTextViewHeight, kToolBarWidth, kToolBarHeight)];
        [_toolBar addSubview:[self imageButton]];
        [_toolBar addSubview:[self voiceButton]];
        [_toolBar addSubview:[self faceButton]];
        [_toolBar addSubview:[self moreButton]];
    }
    return _toolBar;
}

- (UIButton *) imageButton {
    if (_imageButton == nil) {
        _imageButton = [[UIButton alloc] initWithFrame:CGRectMake(kToolBarPaddingLeft, kToolBarPaddingTop, kToolBarItemSize, kToolBarItemSize)];
        [_imageButton setImage:[UIImage imageNamed:@"tCImage"] forState:UIControlStateNormal];
    }
    return _imageButton;
}

- (UIButton *) voiceButton {
    if (_voiceButton == nil) {
        _voiceButton = [[UIButton alloc] initWithFrame:CGRectMake(kToolBarPaddingLeft + kToolBarItemMarginLeft, kToolBarPaddingTop, kToolBarItemSize, kToolBarItemSize)];
        [_voiceButton setImage:[UIImage imageNamed:@"tCVoice"] forState:UIControlStateNormal];
    }
    return _voiceButton;
}

- (UIButton *) faceButton {
    if (_faceButton == nil) {
        _faceButton = [[UIButton alloc] initWithFrame:CGRectMake(kToolBarPaddingLeft + 2 * kToolBarItemMarginLeft, kToolBarPaddingTop, kToolBarItemSize, kToolBarItemSize)];
        [_faceButton setImage:[UIImage imageNamed:@"tCFace"] forState:UIControlStateNormal];
    }
    return _faceButton;
}

- (UIButton *) moreButton {
    if (_moreButton == nil) {
        _moreButton = [[UIButton alloc] initWithFrame:CGRectMake(kToolBarPaddingLeft + 3 * kToolBarItemMarginLeft, kToolBarPaddingTop, kToolBarItemSize, kToolBarItemSize)];
        [_moreButton setImage:[UIImage imageNamed:@"tCMore"] forState:UIControlStateNormal];
    }
    return _moreButton;
}

@end
