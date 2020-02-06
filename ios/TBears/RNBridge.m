//
//  RNBridge.m
//  TBears
//
//  Created by Changxin Li on 2020/2/6.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "RNBridge.h"
#import "AppDelegate.h"
#import "TChatViewController.h"
#import <React/RCTBridge.h>

@implementation RNBridge
  RCT_EXPORT_MODULE();

  RCT_EXPORT_METHOD(jumpNativePage) {
    dispatch_async(dispatch_get_main_queue(), ^{
      AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
      UIViewController *rnBridgeViewController = appDelegate.window.rootViewController;
      TChatViewController *tChatViewController = [TChatViewController new];
      [rnBridgeViewController presentViewController:tChatViewController animated:YES completion:nil];
    });
  }
@end
