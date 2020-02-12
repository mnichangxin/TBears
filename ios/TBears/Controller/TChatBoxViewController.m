#import "TChatBoxViewController.h"
#import "TChatBoxView.h"

@interface TChatBoxViewController ()

@property (nonatomic, strong) TChatBoxView *tCBoxView;

@end

@implementation TChatBoxViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[self view] addSubview:[self tCBoxView]];
}

- (TChatBoxView *) tCBoxView {
    if (_tCBoxView == nil) {
        _tCBoxView =  [[TChatBoxView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kTabbarHeight)];
    }
    return _tCBoxView;
}

@end
