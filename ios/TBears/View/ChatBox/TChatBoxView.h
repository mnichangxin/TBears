#import <UIKit/UIKit.h>

@protocol TChatBoxDelegate <NSObject>
@end

@interface TChatBoxView : UIView

@property (nonatomic, weak) id<TChatBoxDelegate> delegate;

@end

