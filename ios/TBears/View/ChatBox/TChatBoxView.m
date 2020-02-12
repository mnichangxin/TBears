#import "TChatBoxView.h"
#import "UIColor+Hex.h"

@interface TChatBoxView ()

@property (nonatomic, strong) UIView *topLine;
@property (nonatomic, strong) UITextView *textView;

@end

@implementation TChatBoxView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor colorWithHexString:@"#ffffff"]];
        [self addSubview:[self topLine]];
    }
    return self;
}

- (UIView *) topLine {
    if (_topLine == nil) {
        _topLine = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, .5)];
        [_topLine setBackgroundColor:[UIColor colorWithHexString:@"#f2f2f2"]];
    }
    return _topLine;
}

@end
