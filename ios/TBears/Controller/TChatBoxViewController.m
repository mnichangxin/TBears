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
//    [[tCBoxVC view] setBackgroundColor:[UIColor colorWithHexString:@"#f2f2f2"]];
    if (_tCBoxView == nil) {
        _tCBoxView =  [[TChatBoxView alloc] initWithFrame:CGRectMake(0, kScreenHeight - kTabbarHeight, kScreenWidth, kTabbarHeight)];
    }
    return _tCBoxView;
}

@end
