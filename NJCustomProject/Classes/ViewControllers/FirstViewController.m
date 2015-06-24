//
//  FirstViewController.m
//  NJCustomProject
//
//  Created by NJ on 15/5/11.
//  Copyright (c) 2015年 NJ. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()
@end

@implementation FirstViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton  *btn = [NJView createButtonWithFrame:CGRectMake(100, 100, 100, 100) title:@"Button" bgColor:[UIColor blueColor] radius:50 target:self action:@selector(btnClick:)];
    [self.view addSubview:btn];
    
    UIView *view = [NJView createActiveViewWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2-15, [UIScreen mainScreen].bounds.size.height/2-15, 30, 30)];
    [self.view addSubview:view];
    
}

- (void)btnClick:(UIButton *)sender
{
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
