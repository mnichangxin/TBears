#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ChatBoxStatus) {
    ChatBoxNotingStatus, // 无状态
    ChatBoxShowKeyboard, // 键盘
    ChatBoxShowVoiceStatus, // 声音
    ChatBoxShowFaceStatus, // 表情
    ChatBoxShowImageStatus // 图片
};

@class TChatBoxView;

@protocol TChatBoxViewDelegate <NSObject>

- (void) tChatBoxView:(TChatBoxView *)tChatBoxView changeStatusFrom:(ChatBoxStatus)fromStatus to:(ChatBoxStatus)toStatus;
- (void) tChatBoxView:(TChatBoxView *)tChatBoxView changeTChatBoxViewHeight:(CGFloat)tChatBoxViewHeight;

@end

@interface TChatBoxView : UIView

@property (nonatomic, weak) id<TChatBoxViewDelegate> delegate;

- (BOOL) resignFirstResponder;

@end

