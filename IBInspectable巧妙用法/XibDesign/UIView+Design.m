//
//  UIView+Design.m
//  
//
//  Created by 1 on 15/4/21.
//
//

#import "UIView+Design.h"
#import <objc/runtime.h>


@implementation UIView (Design)

@dynamic cornerRadius,borderColor,borderWidth;

#define CornerRadius_Key @"CornerRadius_Key"
#define BorderWidth_Key @"BorderWidth_Key"
#define BorderColor_Key @"BorderColor_Key"

#pragma mark - UIView + corner and broder
- (CGFloat)cornerRadius{
    NSNumber *key = (NSNumber *)objc_getAssociatedObject(self, CornerRadius_Key);
    return key.doubleValue;
}

-(void)setCornerRadius:(CGFloat)cornerRadius
{
    objc_setAssociatedObject(self, CornerRadius_Key, [NSNumber numberWithDouble:cornerRadius], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (CGFloat)borderWidth{
    NSNumber *key = (NSNumber *)objc_getAssociatedObject(self, BorderWidth_Key);
    return key.doubleValue;
}

-(void)setBorderWidth:(CGFloat)borderWidth
{
    objc_setAssociatedObject(self, BorderWidth_Key, [NSNumber numberWithDouble:borderWidth], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.layer.borderWidth = borderWidth;
}

- (UIColor *)borderColor{
    return objc_getAssociatedObject(self, BorderColor_Key);
}

-(void)setBorderColor:(UIColor *)borderColor{
    objc_setAssociatedObject(self, BorderColor_Key, borderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.layer.borderColor = self.borderColor.CGColor;
}

@end
