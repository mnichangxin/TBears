#import "TChatMessageViewController.h"
#import "TChatMessageTextCell.h"
#import "TMessageModel.h"
#import "TUserModel.h"
#import "UIColor+Hex.h"

@interface TChatMessageViewController ()

@property (nonatomic, strong) NSMutableArray *messages;
@property (nonatomic, strong) NSMutableArray *cells;
@property (nonatomic, strong) UITapGestureRecognizer *tapGR;

@end

@implementation TChatMessageViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    [self initData];
    
    [[self view] setBackgroundColor:[UIColor colorWithHexString:@"#fbfbfb"]];
    [[self view] addGestureRecognizer:[self tapGR]];
    [[self tableView] setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [[self tableView] setShowsVerticalScrollIndicator:NO];
}

- (void) initData {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"messageInfo" ofType:@"plist"];
    NSMutableArray *array = [NSMutableArray arrayWithContentsOfFile:path];
    [self setMessages:array];
}

#pragma mark - UITableViewDelegate

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self messages] count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier=@"UITableViewCellIdentifierKey1";
    
    TChatMessageTextCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[TChatMessageTextCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        [[self cells] addObject:cell];
    }
    
    NSDictionary *message = [[self messages] objectAtIndex:[indexPath row]];
    
    TUserModel *userModel = [[TUserModel alloc] initWithDictionary:[message objectForKey:@"from"]];
    
    TMessageModel *messageModel = [[TMessageModel alloc] initWithDictionary:@{
        @"from": userModel,
        @"ownerType": [message objectForKey:@"ownerType"],
        @"emissionType": [message objectForKey:@"emissionType"],
        @"text": [message objectForKey:@"text"]
    }];

    [cell setMessageModel:messageModel];
    [cell layoutViews];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    TChatMessageCell *cell = [[self cells] objectAtIndex:[indexPath row]];

    return [cell height];
}

#pragma mark - Methods

- (void) didTapView {
    if (_delegate && [_delegate respondsToSelector:@selector(didTouchTChatMessageView:)]) {
        [_delegate didTouchTChatMessageView:self];
    }
}

#pragma mark - Getter

- (NSMutableArray *) messages {
    if (_messages == nil) {
        _messages = [[NSMutableArray alloc] init];
    }
    return _messages;
}

- (NSMutableArray *) cells {
    if (_cells == nil) {
        _cells = [[NSMutableArray alloc] init];
    }
    return _cells;
}

- (UITapGestureRecognizer *) tapGR {
    if (_tapGR == nil) {
        _tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapView)];
    }
    return _tapGR;
}

@end
