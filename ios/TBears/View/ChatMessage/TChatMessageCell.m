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
#define kMessageCellVerticalPadding                kScreenHeight * (103.f / 1920)

@implementation TChatMessageCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
        [self setBackgroundColor:[UIColor clearColor]];
        [[self contentView] addSubview:[self avatarImageView]];
        [[self contentView] addSubview:[self nicknameLabel]];
    }
    return self;
}

- (void) layoutViews {
    TMessageModel *messageModel = [self messageModel];
    
    TMessageOwnerType ownerType = [messageModel ownerType];
    TMessageEmissionType emissionType = [messageModel emissionType];
    
    NSString *nickName = [[messageModel from] nickName];
    
    if (ownerType == TMessageOwnerTypeSelf) {
        [[self avatarImageView] setOrigin:CGPointMake(kScreenWidth - kAvatarImageMarginRight - kAvatarImageWidth, kMessageCellVerticalPadding)];
        [[self avatarImageView] sd_setImageWithURL:_messageModel.from.avatarUri];
        [[self nicknameLabel] setOrigin:CGPointMake(CGRectGetMaxX([[self avatarImageView] frame]) + kNickNameMarginLeft, kMessageCellVerticalPadding)];
    } else if (ownerType == TMessageOwnerTypeOther) {
        [[self avatarImageView] setOrigin:CGPointMake(kAvatarImageMarginLeft, kMessageCellVerticalPadding)];
        [[self avatarImageView] sd_setImageWithURL:_messageModel.from.avatarUri];
        
        [[self nicknameLabel] setOrigin:CGPointMake(CGRectGetMaxX([[self avatarImageView] frame]) + kNickNameMarginLeft, kMessageCellVerticalPadding)];
        
        // 如果是群聊，需要展示群好友的昵称
        if (emissionType == TMessageBroadcast) {
            [[self nicknameLabel] setText:nickName];
            [[self nicknameLabel] setFont:[UIFont systemFontOfSize:14.f]];
            
            CGSize nickNameLabelSize = [[self nicknameLabel] size];
            
            [[self nicknameLabel] setFrame:CGRectMake(CGRectGetMaxX([[self avatarImageView] frame]) + kNickNameMarginLeft, kMessageCellVerticalPadding, nickNameLabelSize.width, nickNameLabelSize.height)];
        } else {
            [[self nicknameLabel] setOrigin:CGPointMake(CGRectGetMaxX([[self avatarImageView] frame]) + kNickNameMarginLeft, kMessageCellVerticalPadding)];
        }
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
        _nicknameLabel = [[TLabel alloc] init];
    }
    return _nicknameLabel;
}

@end
