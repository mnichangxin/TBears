#import <UIKit/UIKit.h>

@class TChatMessageViewController;

@protocol TChatMessageViewControllerDelegate <NSObject>

- (void) didTouchTChatMessageView:(TChatMessageViewController *)tChatMessageVC;

@end

@interface TChatMessageViewController : UIViewController

@property (nonatomic, weak) id<TChatMessageViewControllerDelegate> delegate;

@end

