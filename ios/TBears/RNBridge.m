#import "RNBridge.h"
#import "AppDelegate.h"

@implementation RNBridge
    RCT_EXPORT_MODULE();

    RCT_EXPORT_METHOD(jumpNativePage:(NSDictionary *) params) {
        NSDictionary *vcNameMap = @{
            @"chat": @"TChatViewController"
        };
        
        NSString *vcName = [params objectForKey:@"name"];
        
        if (![vcName isKindOfClass:[NSNull class]] && ![vcName isEqualToString:@""]) {
            dispatch_async(dispatch_get_main_queue(), ^{
                AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
                [[appDelegate navController] setNavigationBarHidden:NO animated:NO];
                [[appDelegate navController] pushViewController:[NSClassFromString([vcNameMap objectForKey:vcName]) new] animated:YES];
            });
        }
    }

    RCT_EXPORT_METHOD(back){
        dispatch_async(dispatch_get_main_queue(), ^{
            AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
            [[appDelegate navController] popViewControllerAnimated:YES];
        });
    }
@end
