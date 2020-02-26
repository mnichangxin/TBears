#import "TChatMessageTextCell.h"
#import "UIView+TL.h"

@implementation TChatMessageTextCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self addSubview:[self messageTextLabel]];
    }
    return self;
}

- (void) layoutSubviews {
    [super layoutSubviews];
}

- (void) setMessageModel:(TMessageModel *)messageModel {
    [super setMessageModel:messageModel];
    [_messageTextLabel setText:[messageModel text]];
}

#pragma mark - Getter

- (UILabel *) messageTextLabel {
    if (_messageTextLabel == nil) {
        _messageTextLabel = [[UILabel alloc] init];
        [_messageTextLabel setFont:[UIFont systemFontOfSize:16.f]];
        [_messageTextLabel setNumberOfLines:0];
    }
    return _messageTextLabel;
}

@end
