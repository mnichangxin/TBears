#import "TRootViewController.h"
#import "AppDelegate.h"

@implementation TRootViewController

- (void)viewWillAppear:(BOOL)animated {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [[appDelegate navController] setNavigationBarHidden:YES animated:YES];
}

@end
