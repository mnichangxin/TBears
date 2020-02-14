#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ChatBoxStatus) {
    ChatBoxNotingStatus, // 无状态
    ChatBoxShowKeyboard, // 键盘
    ChatBoxShowFaceStatus, // 表情
    ChatBoxShowImageStatus, // 图片
    ChatBoxShowVoiceStatus, // 声音
};

@class TChatBoxView;
@protocol TChatBoxDelegate <NSObject>

- (void)chatBox:(TChatBoxView *)chatBox changeStatusFrom:(ChatBoxStatus)fromStatus to:(ChatBoxStatus)toStatus;
- (void)chatBox:(TChatBoxView *)chatBox changeChatBoxHeight:(CGFloat) chatBoxHeight;

@end

@interface TChatBoxView : UIView

@property (nonatomic, weak) id<TChatBoxDelegate> delegate;

@end

