#import "TLabel.h"

@implementation TLabel

- (id) initWithFrame:(CGRect)frame andInsets:(UIEdgeInsets)insets {
    if (self = [super initWithFrame:frame]) {
        [self setInsets:insets];
    }
    return self;
}

- (id) initWithInsets:(UIEdgeInsets)insets {
    if (self = [super init]) {
        [self setInsets:insets];
    }
    return self;
}

- (void) drawRect:(CGRect)rect {
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, [self insets])];
}

- (CGSize) size {
    CGSize size = [super intrinsicContentSize];
    size.width += self.insets.left + self.insets.right;
    size.height += self.insets.top + self.insets.bottom;
    return size;
}

@end
