#import "TChatMessageViewController.h"
#import "UIColor+Hex.h"

@interface TChatMessageViewController ()

@property (nonatomic, strong) UITapGestureRecognizer *tapGR;

@end

@implementation TChatMessageViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    [[self view] setBackgroundColor:[UIColor colorWithHexString:@"#fbfbfb"]];
    [[self view] addGestureRecognizer:[self tapGR]];
}

#pragma mark - Methods

- (void) didTapView {
    if (_delegate && [_delegate respondsToSelector:@selector(didTouchTChatMessageView:)]) {
        [_delegate didTouchTChatMessageView:self];
    }
}

#pragma mark - Getter

- (UITapGestureRecognizer *) tapGR {
    if (_tapGR == nil) {
        _tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapView)];
    }
    return _tapGR;
}

@end
