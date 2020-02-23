#import "TUserModel.h"

@implementation TUserModel

- (TUserModel *) initWithDictionary:(NSDictionary *)dic {
    [self setUserId:dic[@"userId"]];
    [self setNickName:dic[@"nickName"]];
    [self setAvatarUri:dic[@"avatarUri"]];
    [self setDate:dic[@"date"]];
    return self;
}

+ (TUserModel *) userModelWithDictionary:(NSDictionary *)dic {
    TUserModel *userModel = [[TUserModel alloc] initWithDictionary:dic];
    return userModel;
}

@end
