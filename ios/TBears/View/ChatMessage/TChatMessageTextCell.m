#import "TChatMessageTextCell.h"
#import "UIView+TL.h"
#import "UIColor+Hex.h"

#define kMessageTextLabelMaxWidth          kScreenWidth * (712.f / 1080)
#define kMessageTextLabelMarginLeft        kScreenWidth * (36.f / 1080)
#define kMessageTextLabelMarginRight       kMessageTextLabelMarginLeft
#define kMessageTextLabelMarginTop         kScreenWidth * (10.f / 1080)
#define kMessageTextLabelInsets            kScreenWidth * (36.f / 1080)

@implementation TChatMessageTextCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [[self contentView] addSubview:[self messageTextLabel]];
    }
    return self;
}

- (void) layoutViews {
    [super layoutViews];
    
    TMessageModel *messageModel = [self messageModel];
    
    TMessageOwnerType ownerType = [messageModel ownerType];
    
    NSString *messageText = [messageModel text];
    
    [[self messageTextLabel] setText:messageText];
    
    CGSize messageTextLabelSize = [[self messageTextLabel] size];

    if (ownerType == TMessageOwnerTypeSelf) {
        [[self messageTextLabel] setFrame:CGRectMake(CGRectGetMinX([[self avatarImageView] frame]) - kMessageTextLabelMarginRight - messageTextLabelSize.width, CGRectGetMaxY([[self nicknameLabel] frame]) + kMessageTextLabelMarginTop, messageTextLabelSize.width, messageTextLabelSize.height)];
        [[self messageTextLabel] setTextColor:[UIColor colorWithHexString:@"#ffffff"]];
        [[[self messageTextLabel] layer] setBackgroundColor:[[UIColor colorWithHexString:@"#564f5f"] CGColor]];
    } else if (ownerType == TMessageOwnerTypeOther) {
        [[self messageTextLabel] setFrame:CGRectMake(CGRectGetMaxX([[self avatarImageView] frame]) + kMessageTextLabelMarginLeft, CGRectGetMaxY([[self nicknameLabel] frame]) + kMessageTextLabelMarginTop, messageTextLabelSize.width, messageTextLabelSize.height)];
        [[self messageTextLabel] setTextColor:[UIColor colorWithHexString:@"#000000"]];
        [[[self messageTextLabel] layer] setBackgroundColor:[[UIColor colorWithHexString:@"#f3f3f3"] CGColor]];
    }
    
    [self setHeight:CGRectGetMaxY([[self messageTextLabel] frame])];
}

#pragma mark - Getter

- (UILabel *) messageTextLabel {
    if (_messageTextLabel == nil) {
        _messageTextLabel = [[TLabel alloc] initWithInsets:UIEdgeInsetsMake(kMessageTextLabelInsets, kMessageTextLabelInsets, kMessageTextLabelInsets, kMessageTextLabelInsets)];
        [_messageTextLabel setFont:[UIFont systemFontOfSize:17.f]];
        [_messageTextLabel setNumberOfLines:0];
        [_messageTextLabel setPreferredMaxLayoutWidth:kMessageTextLabelMaxWidth];
        [[_messageTextLabel layer] setCornerRadius:8.f];
    }
    return _messageTextLabel;
}

@end
