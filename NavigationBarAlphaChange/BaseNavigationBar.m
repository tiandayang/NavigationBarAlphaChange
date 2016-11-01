//
//  BaseNavigationBar.m
//  NavigationBarAlphaChange
//
//  Created by 田向阳 on 16/11/1.
//  Copyright © 2016年 田向阳. All rights reserved.
//

#import "BaseNavigationBar.h"

@implementation BaseNavigationBar

#pragma mark -  life cycle
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self createUI];
    }
    return self;
}


- (void)dealloc
{
    
}

#pragma mark - LoadData


#pragma mark - Action

#pragma mark - Notification

#pragma mark - UITableViewDelegate

#pragma mark - CreateUI
- (void)createUI
{
    self.backgroundView = ({
        UIView *view = [[UIView alloc] init];
        [self addSubview:view];
        view;
    });
    
    for (UIView *subView in [self subviews]) {
        NSLog(@"**********%@\n",NSStringFromClass([subView  class]));
        if ([NSStringFromClass([subView class]) isEqualToString:@"_UIBarBackground"]) {
            subView.hidden = YES;
        }
    }
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    self.backgroundView.frame = CGRectMake(0, -20, CGRectGetWidth([UIScreen mainScreen].bounds), 64);
    [self sendSubviewToBack:self.backgroundView];
}
#pragma mark - Helper

- (void)setBarTintColor:(UIColor *)barTintColor
{
    self.backgroundView.backgroundColor = barTintColor;
}


@end
