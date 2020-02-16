#import "TChatMessageViewController.h"
#import "UIColor+Hex.h"

@interface TChatMessageViewController ()

@property (nonatomic, strong) UITapGestureRecognizer *tapGR;

@end

@implementation TChatMessageViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    [[self view] setBackgroundColor:[UIColor colorWithHexString:@"#fbfbfb"]];
    [[self view] addGestureRecognizer:[self tapGR]];
}

#pragma mark - UITableViewDelegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    [[cell imageView] setImage:[UIImage imageNamed:@"navBarBack"]];
    [[cell textLabel] setText:@"王二麻子"];
    [[cell detailTextLabel] setText:@"你好你好你好"];
    
    return cell;
}

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
