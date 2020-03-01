#import <UIKit/UIKit.h>

@interface TLabel : UILabel

@property (nonatomic, assign) UIEdgeInsets insets;
@property (nonatomic, assign) CGSize size;

- (id) initWithFrame:(CGRect)frame andInsets:(UIEdgeInsets) insets;
- (id) initWithInsets:(UIEdgeInsets) insets;

@end

