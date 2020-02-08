#import "TNavigationController.h"
#import "UIColor+Hex.h"
#import "UIImage+Color.h"

@implementation TNavigationController

+ (void)initialize {
    UINavigationBar *navBar = [UINavigationBar appearance];
    
    [navBar setBarTintColor:[UIColor colorWithHexString:@"#ffffff"]];
    [navBar setTintColor:[UIColor colorWithHexString:@"#333333"]];
    [navBar setTitleTextAttributes:@{
        NSForegroundColorAttributeName: [UIColor colorWithHexString:@"#333333"],
        NSFontAttributeName: [UIFont systemFontOfSize:18 weight:UIFontWeightBold],
    }];
    [navBar setShadowImage:[UIImage imageWithColor:[UIColor colorWithHexString:@"#f2f2f2"]]];
}

- (void)viewDidLoad {
    __weak typeof(self) weakself = self;
    if ([self respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.interactivePopGestureRecognizer.delegate = (id)weakself;
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    [super pushViewController:viewController animated:animated];
    
    UINavigationItem *navItem = [viewController navigationItem];
    
    if (navItem.leftBarButtonItem == nil && self.viewControllers.count >= 1) {
        [navItem setLeftBarButtonItem:[[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"back"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(popSelf)]];
    }
}

- (void)popSelf {
    [self popViewControllerAnimated:YES];
}

@end
