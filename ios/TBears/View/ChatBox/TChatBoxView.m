#import "TChatBoxView.h"
#import "TButton.h"
#import "UIColor+Hex.h"

//#define  kTextViewWidth         kScreenWidth * 0.9
//#define  kTextViewHeight        kChatBoxHeight * 0.38
//#define  kTextViewMarginLeft    kScreenWidth * 0.05
#define  kTextViewMarginTop     kChatBoxHeight * 0.137

#define  kToolBarWidth          kScreenWidth * 0.9
#define  kToolBarHeight         kChatBoxHeight * 0.48
#define  kToolBarPaddingTop     kToolBarHeight * 0.28
#define  kToolBarPaddingLeft    kToolBarWidth * 0.07
#define  kToolBarItemSize       kToolBarHeight * 0.54
#define  kToolBarItemMarginLeft kToolBarWidth * 0.265


#define kChatBoxInsetTop          kScreenHeight * (36.f / 1920)
#define KVoiceButtonMarginLeft    kScreenWidth * (60.f / 1080)
#define kToolButtonWidth          kScreenWidth * (62.f / 1080)
#define kToolButtonHeight         kToolButtonWidth
#define kToolButtonMarginTVTop    kScreenHeight * (18.f / 1920)
#define kTextViewWidth            kScreenWidth * (750.f / 1080)
#define kTextViewHeight           kScreenHeight * (96.f / 1920)
#define kTextViewMarginLeft       kScreenWidth * (43.f / 1080)
#define kImageButtonMarginLeft    kTextViewMarginLeft

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
        [self addSubview:[self imageButton]];
        
//        [self setStatus:ChatBoxNotingStatus];
    }
    return self;
}

- (BOOL) resignFirstResponder {
    [[self textView] resignFirstResponder];
    return [super resignFirstResponder];
}

#pragma mark - UITextViewDelegate

- (void) textViewDidBeginEditing:(UITextView *)textView {
    ChatBoxStatus fromStatus = [self status];
    
    [self setStatus:ChatBoxShowKeyboard];
    
    if (_delegate && [_delegate respondsToSelector:@selector(tChatBoxView:changeStatusFrom:to:)]) {
        [_delegate tChatBoxView:self changeStatusFrom:fromStatus to:[self status]];
    }
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
        [_textView setBackgroundColor:[UIColor colorWithHexString:@"#f2f2f2"]];
        [_textView setTextColor:[UIColor colorWithHexString:@"#333333"]];
        [_textView setTextAlignment:NSTextAlignmentLeft];
        [_textView setReturnKeyType:UIReturnKeySend];
        [_textView setScrollEnabled:NO];
        [_textView setFont:[UIFont systemFontOfSize:16.f]];
        [_textView setTextContainerInset:UIEdgeInsetsMake(kTextViewHeight * 0.3, kTextViewWidth * 0.03, 0, kTextViewWidth * 0.03)];
        [_textView.layer setBorderWidth:1.f];
        [_textView.layer setBorderColor:[[UIColor colorWithHexString:@"#f2f2f2"] CGColor]];
        [_textView.layer setCornerRadius:20.f];
        [_textView setDelegate:self];
    }
    return _textView;
}

- (TButton *) imageButton {
    if (_imageButton == nil) {
        _imageButton = [[TButton alloc] initWithFrame:CGRectMake(CGRectGetMaxX([[self textView] frame]) + kImageButtonMarginLeft, kChatBoxInsetTop + kToolButtonMarginTVTop, kToolButtonWidth, kToolButtonHeight)];
        [_imageButton setImage:[UIImage imageNamed:@"tCImage"] forState:UIControlStateNormal];
//        [_imageButton setBackgroundColor:[UIColor grayColor]];
        [[_imageButton imageView] setContentMode:UIViewContentModeScaleAspectFit];
    }
    return _imageButton;
}

- (UIButton *) faceButton {
    if (_faceButton == nil) {
        _faceButton = [[UIButton alloc] initWithFrame:CGRectMake(kToolBarPaddingLeft + 2 * kToolBarItemMarginLeft, kToolBarPaddingTop, kToolBarItemSize, kToolBarItemSize)];
        [_faceButton setImage:[UIImage imageNamed:@"tCFace"] forState:UIControlStateNormal];
        [_faceButton addTarget:self action:@selector(faceButtonTouch) forControlEvents:UIControlEventTouchUpInside];
    }
    return _faceButton;
}


@end
