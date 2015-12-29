//
//  BaseNavigationViewController.m
//  NJCustomProject
//
//  Created by NJ on 15/5/11.
//  Copyright (c) 2015年 NJ. All rights reserved.
//

#import "BaseNavigationViewController.h"

@interface BaseNavigationViewController ()

@end


@implementation BaseNavigationViewController

#pragma mark 一个类只会调用一次
+ (void)initialize
{
    // 1.取出设置主题的对象
    UINavigationBar *navBar = [UINavigationBar appearance];
    
    // 2.设置导航栏的背景图片
    NSString *navBarBg = nil;
    if (iOS7) { // iOS7
        navBarBg = @"gationBar";
        navBar.tintColor = [UIColor whiteColor];
    } else { // 非iOS7
        navBarBg = @"gationBar";
        [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    }
    [navBar setBackgroundImage:[UIImage imageNamed:navBarBg] forBarMetrics:UIBarMetricsDefault];
    
    //     3.标题
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]
                                     }];
    
    [navBar setBackIndicatorImage:[UIImage imageNamed:@"um_menu_icon_back.png"]];
    [navBar.backIndicatorImage setAccessibilityFrame:CGRectMake(0, 20, 64, 44)];
    [navBar setBackIndicatorTransitionMaskImage:[UIImage imageNamed:@"um_menu_icon_back.png"]];
}

#pragma mark 控制状态栏的样式
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end