#import "TChatMessageCell.h"
#import "UIView+TL.h"
#import "UIColor+Hex.h"
#import <SDWebImage/SDWebImage.h>

#define kAvatarImageWidth                          kScreenWidth * (132.f / 1080)
#define kAvatarImageHeight                         kAvatarImageWidth
#define kAvatarImageMarginLeft                     kScreenWidth * (37.f / 1080)
#define kAvatarImageMarginRight                    kScreenWidth * (53.f / 1080)
#define kNickNameMarginLeft                        kScreenWidth * (36.f / 1080)
#define KNicknameMarginRight                       kNickNameMarginLeft
#define kMessageBackgroundViewMarginLeft           kNickNameMarginLeft
#define kMessageBackgroundViewMarginRight          KNicknameMarginRight
#define kMessageBackgroundViewMarginTop            kScreenWidth * (10.f / 1080)
#define kMessageCellVerticalPadding                kScreenHeight * (103.f / 1920)

@implementation TChatMessageCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        [self setBackgroundColor:[UIColor clearColor]];
        [[self contentView] addSubview:[self avatarImageView]];
        [[self contentView] addSubview:[self nicknameLabel]];
        [[self contentView] addSubview:[self messageBackgroundView]];
    }
    return self;
}

- (void) layoutViews {
    TMessageOwnerType ownerType = [[self messageModel] ownerType];
    TMessageEmissionType emissionType = [[self messageModel] emissionType];
    
    if (ownerType == TMessageOwnerTypeSelf) {
        [[self avatarImageView] setOrigin:CGPointMake(kAvatarImageMarginLeft, kMessageCellVerticalPadding)];
        [[self avatarImageView] sd_setImageWithURL:_messageModel.from.avatarUri];
        
        // 如果是群聊，需要展示群好友的昵称
        if (emissionType == TMessageBroadcast) {
            [[self nicknameLabel] setText:@"李二麻子"];
            [[self nicknameLabel] setFont:[UIFont systemFontOfSize:16.f]];
            
            NSString *text = [[self nicknameLabel] text];
            CGSize textSize = [text sizeWithAttributes:@{NSFontAttributeName: [[self nicknameLabel] font]}];

            [[self nicknameLabel] setFrame:CGRectMake(CGRectGetMaxX([[self avatarImageView] frame]) + kNickNameMarginLeft, kMessageCellVerticalPadding, textSize.width, textSize.height)];
        }
        
        [[self messageBackgroundView] setOrigin:CGPointMake(CGRectGetMaxX([[self avatarImageView] frame]) + kMessageBackgroundViewMarginLeft, emissionType == TMessageBroadcast ? CGRectGetMaxY([[self nicknameLabel] frame]) + kMessageBackgroundViewMarginTop : kMessageCellVerticalPadding)];
        [[self messageBackgroundView] setBackgroundColor:[UIColor colorWithHexString:@"#F3F3F3"]];
    } else if (ownerType == TMessageOwnerTypeOther) {
        [[self avatarImageView] setOrigin:CGPointMake(kScreenWidth - kAvatarImageMarginRight - kAvatarImageWidth, kMessageCellVerticalPadding)];
        [[self avatarImageView] sd_setImageWithURL:_messageModel.from.avatarUri];
        [[self messageBackgroundView] setOrigin:CGPointMake(CGRectGetMinX([[self avatarImageView] frame]) - kMessageBackgroundViewMarginRight - 120.f, kMessageCellVerticalPadding)];
        [[self messageBackgroundView] setBackgroundColor:[UIColor colorWithHexString:@"#564F5F"]];
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

- (UILabel *) nicknameLabel {
    if (_nicknameLabel == nil) {
        _nicknameLabel = [[UILabel alloc] init];
    }
    return _nicknameLabel;
}

- (UIView *) messageBackgroundView {
    if (_messageBackgroundView == nil) {
        _messageBackgroundView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 120.f, 50.f)];
        [[_messageBackgroundView layer] setCornerRadius:8.f];
    }
    return _messageBackgroundView;
}

@end
