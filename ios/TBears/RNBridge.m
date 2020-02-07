#import "RNBridge.h"
#import "AppDelegate.h"
#import "TChatViewController.h"

#import <React/RCTBridge.h>

@implementation RNBridge
    RCT_EXPORT_MODULE();

    RCT_EXPORT_METHOD(jumpNativePage) {
        dispatch_async(dispatch_get_main_queue(), ^{
            AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
            [[appDelegate navController] setNavigationBarHidden:NO animated:NO];
            [[appDelegate navController] pushViewController:[TChatViewController new] animated:YES];
        });
    }

    RCT_EXPORT_METHOD(back){
        dispatch_async(dispatch_get_main_queue(), ^{
            AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
            [[appDelegate navController] popViewControllerAnimated:YES];
        });
    }
@end
