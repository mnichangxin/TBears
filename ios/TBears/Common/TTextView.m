#import "TTextView.h"

@implementation TTextView

- (instancetype) initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}
- (instancetype) initWithCoder:(NSCoder *)decoder {
    if (self = [super initWithCoder:decoder]) {
        [self setup];
    }
    return self;
}
- (void) awakeFromNib {
    [super awakeFromNib];
    [self setup];
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void) setup {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewDidBeginEditing:) name:UITextViewTextDidBeginEditingNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewDidEndEditing:) name:UITextViewTextDidEndEditingNotification object:nil];
}

- (void) textViewDidBeginEditing:(NSNotification *)sender {
    if ([super.text isEqualToString:self.placeholder]) {
        [super setText:@""];
        [super setTextColor:[UIColor blackColor]];
    }
}
 
- (void) textViewDidEndEditing:(NSNotification *)sender {
    if ([[super text] length] == 0) {
        [super setText:[self placeholder]];
        [super setTextColor:[UIColor grayColor]];
    }
}

- (void) setPlaceholder:(NSString *)placeholder {
    _placeholder = placeholder;

    [self textViewDidEndEditing:nil];
}

- (NSString *) text {
    if ([[super text] isEqualToString:[self placeholder]]) {
        [super setText:@""];
    }

    return [super text];
}

@end
