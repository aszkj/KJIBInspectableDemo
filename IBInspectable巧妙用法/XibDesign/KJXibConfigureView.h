//
//  KJXibConfigureView.h
//  IBInspectable巧妙用法
//
//  Created by mm on 17/4/14.
//  Copyright © 2017年 mm. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface KJXibConfigureView : UIView

@property(nonatomic)IBInspectable CGFloat cornerRadius;
@property(nonatomic)IBInspectable UIColor *borderColor;
@property(nonatomic)IBInspectable CGFloat borderWidth;

@end
