//
//  KJCustomView.m
//  IBInspectable巧妙用法
//
//  Created by mm on 17/4/14.
//  Copyright © 2017年 mm. All rights reserved.
//

#import "KJCustomView.h"

@interface KJCustomView()

@property (nonatomic, strong)UILabel *kjTitleLable;

@end

@implementation KJCustomView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self _setUp];
    }
    return self;
}

- (void)_setUp {
    self.kjTitleLable = [UILabel new];
    self.titleColor = [UIColor darkGrayColor];
    self.titleFontSize = 14.0f;
    self.kjTitleLable.text = @"奇思妙想";
    self.kjTitleLable.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.kjTitleLable];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.kjTitleLable.frame = CGRectMake(10, (self.bounds.size.height-30)/2, self.bounds.size.width-20, 30);
    self.kjTitleLable.textColor = self.titleColor;
    self.kjTitleLable.font = [UIFont systemFontOfSize:self.titleFontSize];
}

@end
