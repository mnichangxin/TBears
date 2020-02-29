#import "TMessageModel.h"

@implementation TMessageModel

- (TMessageModel *)initWithDictionary:(NSDictionary *)dic {
    [self setFrom:dic[@"from"]];
    [self setDate:dic[@"date"]];
    [self setEmissionType:[dic[@"emissionType"] integerValue]];
    [self setMessageType:[dic[@"messageType"] integerValue]];
    [self setOwnerType:[dic[@"ownerType"] integerValue]];
    [self setReadState:[dic[@"readState"] integerValue]];
    [self setSendState:[dic[@"sendState"] integerValue]];
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
