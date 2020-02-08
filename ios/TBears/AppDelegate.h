#import <UIKit/UIKit.h>
#import <React/RCTBridgeDelegate.h>
#import "TNavigationController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, RCTBridgeDelegate>

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) TNavigationController *navController;

@end

