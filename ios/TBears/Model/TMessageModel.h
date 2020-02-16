#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "TUserModel.h"

// 消息拥有者
typedef NS_ENUM(NSInteger, TMessageOwnerType) {
    TMessageOwnerTypeUnknown,
    TMessageOwnerTypeSysyem,
    TMessageOwnerTypeSelf,
    TMessageOwnerTypeOther
};
// 消息类型
typedef NS_ENUM(NSInteger, TMessageType) {
    TMessageTypeUnknown,
    TMessageTypeSystem,
    TMessageTypeText,
    TMessageTypeImage,
    TMessageTypeVoice,
    TMessageTypeVideo,
    TMessageTypeFile,
    TMessageTypeLocation,
    TMessageTypeShake
};
// 消息发送状态
typedef NS_ENUM(NSInteger, TMessageSendState) {
    TMessageSendSuccess,
    TMessageSendFail
};
// 消息读取状态
typedef NS_ENUM(NSInteger, TMessageReadState) {
    TMessageUnRead,
    TMessageReaded
};

@interface TMessageModel : NSObject

@property (nonatomic, strong) TUserModel *from; // 发送者信息
@property (nonatomic, strong) NSDate *date; // 发送时间
@property (nonatomic, assign) TMessageType messageType; // 消息类型
@property (nonatomic, assign) TMessageOwnerType ownerType; // 发送者类型
@property (nonatomic, assign) TMessageSendState sendState; // 发送状态
@property (nonatomic, assign) TMessageReadState readState; // 读取状态

@property (nonatomic, assign) CGSize messageSize; // 消息大小
@property (nonatomic, assign) CGFloat cellHeight; // Cell 高度
@property (nonatomic, copy) NSString *cellIndentify; // Cell 标识

#pragma mark - 文字消息
@property (nonatomic, copy) NSString *text;

#pragma mark - 图片消息
@property (nonatomic, copy) NSString *imageLocalUri;
@property (nonatomic, copy) NSString *imageUri;

#pragma mark - 语音消息
@property (nonatomic, assign) NSUInteger voiceSeconds;
@property (nonatomic, copy) NSString *voiceLocalUri;

@end

