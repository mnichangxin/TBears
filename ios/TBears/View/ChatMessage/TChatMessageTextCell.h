#import <UIKit/UIKit.h>
#import "TChatMessageCell.h"

@interface TChatMessageTextCell : TChatMessageCell

@property (nonatomic, strong) UILabel *messageTextLabel;

- (void) setMessageModel:(TMessageModel *)messageModel;

@end

