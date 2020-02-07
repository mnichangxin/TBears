#import "RootViewController.h"
#import "AppDelegate.h"

@implementation RootViewController

- (void)viewWillAppear:(BOOL)animated {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [[appDelegate navController] setNavigationBarHidden:YES animated:YES];
}

@end
