#import "TChatMessageCell.h"
#import "UIView+TL.h"
#import "UIColor+Hex.h"

#define kAvatarImageWidth                          kScreenWidth * (132 / 1080)
#define kAvatarImageHeight                         kAvatarImageWidth
#define kAvatarImageMarginLeft                     kScreenWidth * (37 / 1080)
#define kAvatarImageMarginRight                    kScreenWidth * (53 / 1080)
#define kMessageBackgroundViewMarginLeft           kScreenWidth * (36 / 1080)
#define kMessageBackgroundViewMarginRight          kMessageBackgroundViewMarginLeft
#define kMessageCellVerticalPadding                kScreenHeight * (103 / 1920)

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
    
    if (_messageModel.ownerType == TMessageOwnerTypeSelf) {
        [[self avatarImageView] setOrigin:CGPointMake(kAvatarImageMarginLeft, kMessageCellVerticalPadding)];
        [[self messageBackgroundView] setOrigin:CGPointMake(CGRectGetMaxX([[self avatarImageView] frame]) + kMessageBackgroundViewMarginLeft, kMessageCellVerticalPadding)];
    } else if (_messageModel.ownerType == TMessageOwnerTypeOther) {
        [[self avatarImageView] setOrigin:CGPointMake(kScreenWidth - kAvatarImageMarginRight - kAvatarImageWidth, kMessageCellVerticalPadding)];
        [[self messageBackgroundView] setOrigin:CGPointMake(kScreenWidth - CGRectGetMinX([[self avatarImageView] frame]), kMessageCellVerticalPadding)];
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
            break;
        case TMessageOwnerTypeSysyem:
            break;
        case TMessageOwnerTypeUnknown:
            break;
        default:
            break;
    }
}

#pragma mark - Getter

- (UIImageView *) avatarImageView {
    if (_avatarImageView == nil) {
        _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, kAvatarImageWidth, kAvatarImageHeight)];
    }
    return _avatarImageView;
}

- (UIView *) messageBackgroundView {
    if (_messageBackgroundView == nil) {
        _messageBackgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    }
    return _messageBackgroundView;
}

@end
