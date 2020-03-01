#import <UIKit/UIKit.h>
#import "TLabel.h"
#import "TMessageModel.h"

@interface TChatMessageCell : UITableViewCell

@property (nonatomic, strong) TMessageModel *messageModel;
@property (nonatomic, strong) UIImageView *avatarImageView; // 头像
@property (nonatomic, strong) TLabel *nicknameLabel; // 昵称（群聊展示）
@property (nonatomic, assign) CGFloat height; // Cell 高度

- (void) layoutViews;

@end

