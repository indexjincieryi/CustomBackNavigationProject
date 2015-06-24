//
//  MainTabBarViewController.m
//  NJCustomProject
//
//  Created by NJ on 15/5/11.
//  Copyright (c) 2015年 NJ. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
#import "FiveViewController.h"
#import "BaseNavigationViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createViewControllers];
    [self createItems];
    
    
}
-(void)createItems{
    //3个数组
    NSArray*titleArray=@[@"First",@"Second",@"Third",@"Fourth",@"Five"];
    NSArray*selectImageNameArray=@[@"tabbar_limitfree_press",@"tabbar_appfree_press",@"tabbar_reduceprice_press",@"tabbar_subject_press",@"tabbar_rank_press"];
    NSArray*UnselectImageNameArray=@[@"tabbar_limitfree",@"tabbar_appfree",@"tabbar_reduceprice",@"tabbar_subject",@"tabbar_rank"];
    
    
    for (int i=0; i<self.tabBar.items.count; i++) {
        UITabBarItem*item=self.tabBar.items[i];
        
        if (iOS7) {
            //需要对图片进行单独处理
            UIImage*selectImage=[UIImage imageNamed:selectImageNameArray[i]];
            selectImage=[selectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            UIImage*unSelectImage=[UIImage imageNamed:UnselectImageNameArray[i]];
            unSelectImage=[unSelectImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            
            //以上是防止在bar上显示为阴影而不是图片
            item.selectedImage=selectImage;
            item.image=unSelectImage;
            item.title=titleArray[i];
            
            
        }else{
//            [item setFinishedSelectedImage:[UIImage imageNamed:selectImageNameArray[i]] withFinishedUnselectedImage:[UIImage imageNamed:UnselectImageNameArray[i]]];
//            item.title=titleArray[i];
            [item initWithTitle:titleArray[i] image:[UIImage imageNamed:UnselectImageNameArray[i]] selectedImage:[UIImage imageNamed:selectImageNameArray[i]]];
        }
    }
    
    if (iOS7) {
        [[UITabBarItem appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
    }else{
        [[UITabBarItem appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor redColor]} forState:UIControlStateSelected];
        
    }
    
}
-(void)createViewControllers{
    FirstViewController*vc1=[[FirstViewController alloc]init];
    vc1.title=@"FirstViewController";
    BaseNavigationViewController*nc1=[[BaseNavigationViewController alloc]initWithRootViewController:vc1];
    SecondViewController*vc2=[[SecondViewController alloc]init];
    vc2.title=@"SecondViewController";
    BaseNavigationViewController*nc2=[[BaseNavigationViewController alloc]initWithRootViewController:vc2];
    ThirdViewController*vc3=[[ThirdViewController alloc]init];
    vc3.title=@"ThirdViewController";
    BaseNavigationViewController*nc3=[[BaseNavigationViewController alloc]initWithRootViewController:vc3];
    FourthViewController*vc4=[[FourthViewController alloc]init];
    vc4.title=@"FourthViewController";
    BaseNavigationViewController*nc4=[[BaseNavigationViewController alloc]initWithRootViewController:vc4];
    FiveViewController*vc5=[[FiveViewController alloc]init];
    vc5.title=@"FiveViewController";
    BaseNavigationViewController*nc5=[[BaseNavigationViewController alloc]initWithRootViewController:vc5];
    self.viewControllers=@[nc1,nc2,nc3,nc4,nc5];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
