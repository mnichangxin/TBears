#import "TChatMessageCell.h"
#import "UIView+TL.h"
#import "UIColor+Hex.h"

#define kAvatarImageWidth kScreenWidth * (132 / 1080)
#define kAvatarImageHeight kAvatarImageWidth

@implementation TChatMessageCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSubview:[self avatarImageView]];
        [self addSubview:[self messageBackgroundView]];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat cellWidth = [self frameWidth];
    CGFloat avatarImageViewWidth = [[self avatarImageView] frameWidth];
    
    if (_messageModel.ownerType == TMessageOwnerTypeSelf) {
        [[self avatarImageView] setFrame:CGRectMake(cellWidth - 10.f - avatarImageViewWidth, 10.f, avatarImageViewWidth, avatarImageViewWidth)];
    } else if (_messageModel.ownerType == TMessageOwnerTypeOther) {
        [[self avatarImageView] setFrame:CGRectMake(10.f, 10.f, avatarImageViewWidth, avatarImageViewWidth)];
    }
}

- (void) setMessageModel:(TMessageModel *)messageModel {
    _messageModel = messageModel;
    
    switch (_messageModel.ownerType) {
        case TMessageOwnerTypeSelf:
            [[self avatarImageView] setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:_messageModel.from.avatarUri]]];
            [[self messageBackgroundView] setBackgroundColor:[UIColor colorWithHexString:@"#564F5F"]];
            break;
        case TMessageOwnerTypeOther:
            [[self avatarImageView] setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:_messageModel.from.avatarUri]]];
            [[self messageBackgroundView] setBackgroundColor:[UIColor colorWithHexString:@"#F3F3F3"]];
        case TMessageOwnerTypeSysyem:
            break;
        default:
            break;
    }
}

#pragma mark - Getter

- (UIImageView *) avatarImageView {
    if (_avatarImageView == nil) {
        CGFloat imageViewWidth = 40.f;
        _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, imageViewWidth, imageViewWidth)];
    }
    return _avatarImageView;
}

- (UIView *) messageBackgroundView {
    if (_messageBackgroundView == nil) {
        _messageBackgroundView = [[UIView alloc] init];
    }
    return _messageBackgroundView;
}

@end
