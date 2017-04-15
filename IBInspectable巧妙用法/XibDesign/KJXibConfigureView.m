//
//  KJXibConfigureView.m
//  IBInspectable巧妙用法
//
//  Created by mm on 17/4/14.
//  Copyright © 2017年 mm. All rights reserved.
//

#import "KJXibConfigureView.h"
#import <objc/runtime.h>

@implementation KJXibConfigureView

@dynamic cornerRadius,borderColor,borderWidth;

#define KJCornerRadius_Key @"CornerRadius_Key"
#define KJBorderWidth_Key @"BorderWidth_Key"
#define KJBorderColor_Key @"BorderColor_Key"

#pragma mark - UIView + corner and broder
- (CGFloat)cornerRadius{
    NSNumber *key = (NSNumber *)objc_getAssociatedObject(self, KJCornerRadius_Key);
    return key.doubleValue;
}

-(void)setCornerRadius:(CGFloat)cornerRadius
{
    objc_setAssociatedObject(self, KJCornerRadius_Key, [NSNumber numberWithDouble:cornerRadius], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (CGFloat)borderWidth{
    NSNumber *key = (NSNumber *)objc_getAssociatedObject(self, KJBorderWidth_Key);
    return key.doubleValue;
}

-(void)setBorderWidth:(CGFloat)borderWidth
{
    objc_setAssociatedObject(self, KJBorderWidth_Key, [NSNumber numberWithDouble:borderWidth], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.layer.borderWidth = borderWidth;
}

- (UIColor *)borderColor{
    return objc_getAssociatedObject(self, KJBorderColor_Key);
}

-(void)setBorderColor:(UIColor *)borderColor{
    objc_setAssociatedObject(self, KJBorderColor_Key, borderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.layer.borderColor = self.borderColor.CGColor;
}

@end
