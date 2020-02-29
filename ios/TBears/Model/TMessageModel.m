#import "TMessageModel.h"

@implementation TMessageModel

- (TMessageModel *)initWithDictionary:(NSDictionary *)dic {
    [self setFrom:dic[@"from"]];
    [self setDate:dic[@"date"]];
    [self setEmissionType:[dic[@"emissionType"] emissionType]];
    [self setMessageType:[dic[@"messageType"] messageType]];
    [self setOwnerType:[dic[@"ownerType"] integerValue]];
    [self setReadState:[dic[@"readState"] readState]];
    [self setSendState:[dic[@"sendState"] sendState]];
    [self setText:dic[@"text"]];
    [self setImageUri:dic[@"imageUri"]];
    [self setVoiceUri:dic[@"voiceUri"]];
    
    return self;
}

+ (TMessageModel *) messageModelWithDictionary:(NSDictionary *)dic {
    TMessageModel *messageModel = [[TMessageModel alloc] initWithDictionary:dic];
    return messageModel;
}

@end