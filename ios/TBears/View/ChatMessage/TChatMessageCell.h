#import <UIKit/UIKit.h>
#import "TMessageModel.h"

@interface TChatMessageCell : UITableViewCell

@property (nonatomic, strong) TMessageModel *messageModel;
@property (nonatomic, strong) UIImageView *avatarImageView;
@property (nonatomic, strong) UIView *messageBackgroundView;

- (void) setMessageModel:(TMessageModel *)messageModel;

@end

