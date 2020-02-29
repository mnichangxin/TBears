#import <UIKit/UIKit.h>

@interface TLabel : UILabel

@property (nonatomic, assign) UIEdgeInsets insets;

- (id) initWithFrame:(CGRect)frame andInsets:(UIEdgeInsets) insets;
- (id) initWithInsets:(UIEdgeInsets) insets;

@end

