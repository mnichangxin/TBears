#import <UIKit/UIKit.h>
#import "TMessageModel.h"

@interface TChatMessageCell : UITableViewCell

@property (nonatomic, strong) TMessageModel *messageModel;
@property (nonatomic, strong) UIImageView *avatarImageView; // 头像
@property (nonatomic, strong) UIView *messageBackgroundView; // 消息框
@property (nonatomic, assign) CGFloat height; // Cell 高度

- (void) setMessageModel:(TMessageModel *)messageModel;

@end

