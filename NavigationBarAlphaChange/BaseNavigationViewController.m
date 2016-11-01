//
//  BaseNavigationViewController.m
//  NavigationBarAlphaChange
//
//  Created by 田向阳 on 16/11/1.
//  Copyright © 2016年 田向阳. All rights reserved.
//

#import "BaseNavigationViewController.h"
#import "BaseNavigationBar.h"
@interface BaseNavigationViewController ()<UIGestureRecognizerDelegate>

@end

@implementation BaseNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setValue:[BaseNavigationBar new] forKey:@"navigationBar"];
    self.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationBar.barTintColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    [self.navigationBar setTitleTextAttributes:@{
                                                 NSForegroundColorAttributeName : [UIColor whiteColor],
                                                 NSFontAttributeName : [UIFont systemFontOfSize:18]
                                                 }];
    self.interactivePopGestureRecognizer.delegate = self;
}
#pragma mark - UIGestureRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    /**
     *  这里有两个条件不允许手势执行，1、当前控制器为根控制器；2、如果这个push、pop动画正在执行（私有属性）
     */
    return self.viewControllers.count != 1 && ![[self valueForKey:@"_isTransitioning"] boolValue];
}
@end
