//
//  FirstViewController.m
//  NJCustomProject
//
//  Created by NJ on 15/5/11.
//  Copyright (c) 2015年 NJ. All rights reserved.
//

#import "FirstViewController.h"
#import "DetailViewController.h"
@interface FirstViewController ()
@property (nonatomic, strong) DetailViewController *detailVC;
@end

@implementation FirstViewController

- (DetailViewController *)detailVC{
    if (!_detailVC) {
        _detailVC = [[DetailViewController alloc] init];
    }
    return _detailVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton  *btn = [NJView createButtonWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2 - 50, 100, 100, 100) title:@"点击进入" bgColor:nil radius:0.f target:self action:@selector(btnClick:)];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    [self.view addSubview:btn];
    
}

- (void)btnClick:(UIButton *)sender
{
    [self.navigationController pushViewController:self.detailVC animated:YES];
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
