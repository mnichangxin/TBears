#import "TButton.h"

@implementation TButton

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    [super imageRectForContentRect:contentRect];
    
    return CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
}

@end
