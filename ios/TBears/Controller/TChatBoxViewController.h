#import <UIKit/UIKit.h>

@class TChatBoxViewController;

@protocol TChatBoxViewControllerDelegate <NSObject>

- (void) tChatBoxVC:(TChatBoxViewController *) tChatBoxVC didChangeHeight:(CGFloat) height;

@end

@interface TChatBoxViewController : UIViewController

@property (nonatomic, weak) id<TChatBoxViewControllerDelegate> delegate;

- (BOOL) resignFirstResponder;

@end
