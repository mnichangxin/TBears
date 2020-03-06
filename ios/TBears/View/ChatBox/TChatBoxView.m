#import "TChatBoxView.h"
#import "TButton.h"
#import "UIColor+Hex.h"

#define kChatBoxInsetTop          kScreenHeight * (36.f / 1920)
#define KVoiceButtonMarginLeft    kScreenWidth * (60.f / 1080)
#define kToolButtonWidth          kScreenWidth * (62.f / 1080)
#define kToolButtonHeight         kToolButtonWidth
#define kToolButtonMarginTVTop    kScreenHeight * (20.f / 1920)
#define kTextViewWidth            kScreenWidth * (750.f / 1080)
#define kTextViewHeight           kScreenHeight * (96.f / 1920)
#define kTextViewMarginLeft       kScreenWidth * (43.f / 1080)
#define kTextViewInsetTop         kScreenHeight * (26.f / 1920)
#define kTextViewInsetBottom      kScreenHeight * (18.f / 1920)
#define kTextViewInsetLeft        kScreenWidth * (36.f / 1080)
#define kTextViewInsetRight       kScreenWidth * (108.f / 1080)
#define kImageButtonMarginLeft    kTextViewMarginLeft
#define kFaceButtonMarginRight    kScreenWidth * (42.f / 1080)

@interface TChatBoxView ()<UITextViewDelegate>

@property (nonatomic, strong) UIView *topLine;
@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) TButton *imageButton;
@property (nonatomic, strong) TButton *voiceButton;
@property (nonatomic, strong) TButton *faceButton;
@property (nonatomic, strong) TButton *moreButton;
@property (nonatomic, assign) ChatBoxStatus status;

@end

@implementation TChatBoxView

- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor colorWithHexString:@"#ffffff"]];
        [self addSubview:[self topLine]];
        [self addSubview:[self voiceButton]];
        [self addSubview:[self textView]];
        [self addSubview:[self faceButton]];
        [self addSubview:[self imageButton]];
        [self setStatus:ChatBoxNotingStatus];
    }
    return self;
}

- (BOOL) resignFirstResponder {
    [[self textView] resignFirstResponder];
    return [super resignFirstResponder];
}

#pragma mark - UITextViewDelegate

- (void) textViewDidBeginEditing:(UITextView *)textView {
//    ChatBoxStatus fromStatus = [self status];
//
//    [self setStatus:ChatBoxShowKeyboard];
//
//    if (_delegate && [_delegate respondsToSelector:@selector(tChatBoxView:changeStatusFrom:to:)]) {
//        [_delegate tChatBoxView:self changeStatusFrom:fromStatus to:[self status]];
//    }
    NSLog(@"%@", [textView text]);
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    NSLog(@"%@", [textView text]);
}

#pragma mark - Methods

- (void) faceButtonTouch {
    ChatBoxStatus fromStatus = [self status];
    
    if (fromStatus == ChatBoxShowFaceStatus) {
        [self setStatus:ChatBoxShowKeyboard];
        [[self textView] becomeFirstResponder];
    } else {
        [self setStatus:ChatBoxShowFaceStatus];
        [[self textView] resignFirstResponder];
    }
    
    if (_delegate && [_delegate respondsToSelector:@selector(tChatBoxView:changeStatusFrom:to:)]) {
        [_delegate tChatBoxView:self changeStatusFrom:fromStatus to:[self status]];
    }
}

#pragma mark - Getter

- (UIView *) topLine {
    if (_topLine == nil) {
        _topLine = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, .5)];
        [_topLine setBackgroundColor:[UIColor colorWithHexString:@"#f2f2f2"]];
    }
    return _topLine;
}

- (UIButton *) voiceButton {
    if (_voiceButton == nil) {
        _voiceButton = [[TButton alloc] initWithFrame:CGRectMake(KVoiceButtonMarginLeft, kChatBoxInsetTop + kToolButtonMarginTVTop, kToolButtonWidth, kToolButtonHeight)];
        [_voiceButton setImage:[UIImage imageNamed:@"tCVoice"] forState:UIControlStateNormal];
    }
    return _voiceButton;
}

- (UITextView *) textView {
    if (_textView == nil) {
        _textView = [[UITextView alloc] initWithFrame:CGRectMake(CGRectGetMaxX([[self voiceButton] frame]) + kTextViewMarginLeft, kChatBoxInsetTop, kTextViewWidth, kTextViewHeight)];
        [_textView setText:@"输入新消息"];
        [_textView setTextColor:[UIColor colorWithHexString:@"#999999"]];
        [_textView setBackgroundColor:[UIColor colorWithHexString:@"#f5f5f5"]];
        [_textView setTextAlignment:NSTextAlignmentLeft];
        [_textView setReturnKeyType:UIReturnKeySend];
        [_textView setTextContainerInset:UIEdgeInsetsMake(kTextViewInsetTop, kTextViewInsetLeft, kTextViewInsetBottom, kTextViewInsetRight)];
        [_textView setFont:[UIFont systemFontOfSize:16.f]];
        [_textView.layer setCornerRadius:22.f];
        [_textView setDelegate:self];
    }
    return _textView;
}

- (UIButton *) faceButton {
    if (_faceButton == nil) {
        _faceButton = [[TButton alloc] initWithFrame:CGRectMake(CGRectGetMaxX([[self textView] frame]) - kFaceButtonMarginRight - kToolButtonWidth, kChatBoxInsetTop + kToolButtonMarginTVTop, kToolButtonWidth, kToolButtonHeight)];
        [_faceButton setImage:[UIImage imageNamed:@"tCFace"] forState:UIControlStateNormal];
        [_faceButton addTarget:self action:@selector(faceButtonTouch) forControlEvents:UIControlEventTouchUpInside];
    }
    return _faceButton;
}

- (TButton *) imageButton {
    if (_imageButton == nil) {
        _imageButton = [[TButton alloc] initWithFrame:CGRectMake(CGRectGetMaxX([[self textView] frame]) + kImageButtonMarginLeft, kChatBoxInsetTop + kToolButtonMarginTVTop, kToolButtonWidth, kToolButtonHeight)];
        [_imageButton setImage:[UIImage imageNamed:@"tCImage"] forState:UIControlStateNormal];
    }
    return _imageButton;
}

@end
