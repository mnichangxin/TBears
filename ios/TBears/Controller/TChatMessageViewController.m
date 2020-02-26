#import "TChatMessageViewController.h"
#import "TChatMessageTextCell.h"
#import "TMessageModel.h"
#import "TUserModel.h"
#import "UIColor+Hex.h"

@interface TChatMessageViewController ()

@property (nonatomic, strong) UITapGestureRecognizer *tapGR;

@end

@implementation TChatMessageViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    [[self view] setBackgroundColor:[UIColor colorWithHexString:@"#fbfbfb"]];
    [[self view] addGestureRecognizer:[self tapGR]];
//    [[self tableView] setSeparatorStyle:UITableViewCellSeparatorStyleNone];
}

#pragma mark - UITableViewDelegate

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier=@"UITableViewCellIdentifierKey1";
    
    TChatMessageTextCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[TChatMessageTextCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    TUserModel *userModel = [[TUserModel alloc] initWithDictionary:@{
        @"userId": @1,
        @"nickname": @"lichangxin",
        @"avatarUri": [NSURL URLWithString:@"https://tbears-1300872647.cos.ap-beijing.myqcloud.com/group-avatar.png"],
    }];
    TMessageModel *messageModel = [[TMessageModel alloc] initWithDictionary:@{
        @"from": userModel,
        @"ownerType": @(TMessageOwnerTypeOther),
        @"text": @"你好你好你好你好"
    }];

    [cell setMessageModel:messageModel];
    
    return cell;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//    return 60.f;
//}

#pragma mark - Methods

- (void) didTapView {
    if (_delegate && [_delegate respondsToSelector:@selector(didTouchTChatMessageView:)]) {
        [_delegate didTouchTChatMessageView:self];
    }
}

#pragma mark - Getter

- (UITapGestureRecognizer *) tapGR {
    if (_tapGR == nil) {
        _tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapView)];
    }
    return _tapGR;
}

@end
