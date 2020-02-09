#import "AppDelegate.h"
#import "RootViewController.h"

#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTDevLoadingView.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];
    
    #if RCT_DEV
      [bridge moduleForClass:[RCTDevLoadingView class]];
    #endif
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge moduleName:@"TBears" initialProperties:nil];
    
    [rootView setBackgroundColor:[[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1]];
    
    RootViewController *rootViewController = [RootViewController new];
    [rootViewController setView:rootView];
    
    [self setNavController:[[TNavigationController alloc] initWithRootViewController:rootViewController]];
    
    [self setWindow:[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds]];
    [[self window] setRootViewController:[self navController]];
    [[self window] makeKeyAndVisible];
    
    return YES;
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge {

#if DEBUG
    return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
#else
    return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif

}

@end
