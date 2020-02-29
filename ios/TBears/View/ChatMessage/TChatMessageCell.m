#import "TChatMessageCell.h"
#import "UIView+TL.h"
#import "UIColor+Hex.h"
#import <SDWebImage/SDWebImage.h>

#define kAvatarImageWidth                          kScreenWidth * (132.f / 1080)
#define kAvatarImageHeight                         kAvatarImageWidth
#define kAvatarImageMarginLeft                     kScreenWidth * (37.f / 1080)
#define kAvatarImageMarginRight                    kScreenWidth * (53.f / 1080)
#define kMessageBackgroundViewMarginLeft           kScreenWidth * (36.f / 1080)
#define kMessageBackgroundViewMarginRight          kMessageBackgroundViewMarginLeft
#define kMessageCellVerticalPadding                kScreenHeight * (103.f / 1920)

@implementation TChatMessageCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        [self setBackgroundColor:[UIColor clearColor]];
        [[self contentView] addSubview:[self avatarImageView]];
        [[self contentView] addSubview:[self messageBackgroundView]];
    }
    return self;
}

- (void) setMessageModel:(TMessageModel *)messageModel {
    _messageModel = messageModel;
    
    switch (_messageModel.ownerType) {
        case TMessageOwnerTypeSelf:
            [[self avatarImageView] setOrigin:CGPointMake(kAvatarImageMarginLeft, kMessageCellVerticalPadding)];
            [[self avatarImageView] sd_setImageWithURL:_messageModel.from.avatarUri];
            [[self messageBackgroundView] setOrigin:CGPointMake(CGRectGetMaxX([[self avatarImageView] frame]) + kMessageBackgroundViewMarginLeft, kMessageCellVerticalPadding)];
            [[self messageBackgroundView] setBackgroundColor:[UIColor colorWithHexString:@"#564F5F"]];
            break;
        case TMessageOwnerTypeOther:
            [[self avatarImageView] setOrigin:CGPointMake(kScreenWidth - kAvatarImageMarginRight - kAvatarImageWidth, kMessageCellVerticalPadding)];
            [[self avatarImageView] sd_setImageWithURL:_messageModel.from.avatarUri];
            [[self messageBackgroundView] setOrigin:CGPointMake(kScreenWidth - CGRectGetMinX([[self avatarImageView] frame]), kMessageCellVerticalPadding)];
            [[self messageBackgroundView] setBackgroundColor:[UIColor colorWithHexString:@"#F3F3F3"]];
            break;
        case TMessageOwnerTypeSysyem:
            break;
        case TMessageOwnerTypeUnknown:
            break;
        default:
            break;
    }
    
    [self setHeight:CGRectGetMaxY([[self avatarImageView] frame])];
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
