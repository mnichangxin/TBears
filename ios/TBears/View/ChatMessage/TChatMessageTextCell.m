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
    
    float x = [[self avatarImageView] originX] + (
        self.messageModel.ownerType == TMessageOwnerTypeSelf
        ? - [[self messageTextLabel] frameWidth] - 27.f
        : [[self avatarImageView] frameWidth] + 23.f
    );
    float y = [[self avatarImageView] originY] + 11.f;
    float h = MAX([[self messageTextLabel] frameHeight] + 30.f, [[self avatarImageView] frameHeight] + 10.f);
    
    x -= 18.f;
    y = [[self avatarImageView] originY] - 5.f;
    
    [[self messageBackgroundView] setFrame:CGRectMake(x, y, [[self messageTextLabel] frameWidth] + 40.f, h)];
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
