#import <UIKit/UIKit.h>
#import "TMessageModel.h"

@interface TChatMessageCell : UITableViewCell

@property (nonatomic, strong) TMessageModel *messageModel;
@property (nonatomic, strong) UIImageView *avatarImageView; // 头像
@property (nonatomic, strong) UILabel *nicknameLabel; // 昵称（群聊展示）
@property (nonatomic, strong) UIView *messageBackgroundView; // 消息框（只初始化位置，具体样式由子类实现）
@property (nonatomic, assign) CGFloat height; // Cell 高度

- (void) layoutViews;

@end

