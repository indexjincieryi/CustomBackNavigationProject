//
//  NJView.h
//  NJCustomProject
//
//  Created by NJ on 15/5/31.
//  Copyright (c) 2015年 NJ. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kWidth  [[UIScreen mainScreen] bounds].size.width
#define kHeight [[UIScreen mainScreen] bounds].size.height

typedef enum
{
    left=1,
    right,
    center
}TextAlign;

@interface NJView : NSObject

//创建UIView
+ (UIView *)createViewWithFrame:(CGRect)frame
                        bgColor:(UIColor *)color
                         radius:(CGFloat)radius;
//创建UILabel
+ (UILabel *)createLabelWithFrame:(CGRect)frame
                             text:(NSString *)text
                        TextAlign:(TextAlign)textalign
                          bgColor:(UIColor *)color
                         fontSize:(CGFloat)size
                           radius:(CGFloat)radius;
//创建UILabel
+ (UILabel *)createLabelWithFrame:(CGRect)frame
                             text:(NSString *)text
                        TextAlign:(TextAlign)textalign;
//创建UIButton
+ (UIButton *)createButtonWithFrame:(CGRect)frame
                              title:(NSString *)title
                          imageName:(NSString*)imageName
                        bgImageName:(NSString*)bgImageName
                             radius:(CGFloat)radius
                             target:(id)target
                             action:(SEL)sel;
//创建UIButton
+ (UIButton *)createButtonWithFrame:(CGRect)frame
                              title:(NSString *)title
                            bgColor:(UIColor *)color
                             radius:(CGFloat)radius
                             target:(id)target
                             action:(SEL)sel;
//创建UITextField
+ (UITextField *)createTextFieldWithFrame:(CGRect)frame
                              placeholder:(NSString *)placeholder
                              bgImageName:(NSString*)imageName
                                 leftView:(UIView*)leftView
                                rightView:(UIView*)rightView
                               isPassWord:(BOOL)isPassWord
                                 delegate:(id)delegate;
//创建UIImageView
+ (UIImageView *)createImageViewFrame:(CGRect)frame
                            imageName:(NSString*)imageName
                          isUIEnabled:(BOOL)UIEnabled;
//创建UITableView
+ (UITableView *)createTableViewWithFrame:(CGRect)frame
                                    style:(UITableViewStyle)style
                                 delegate:(id)delegate
                               dataSource:(id)dataSource;
//创建菊花视图
+ (UIView *)createActiveViewWithFrame:(CGRect)frame;

//创建UISearchBar
+ (UISearchBar *)createSearchBarWithFrame:(CGRect)frame
                    headerViewOnTableView:(UITableView *)tableView;
//创建UISearchDisplayController
+ (UISearchDisplayController *)createSearchDisplayControllerWithSearchBar:(UISearchBar *)searchBar
                                                       contentsController:(UIViewController *)viewController
                                                                 delegate:(id)delegete;

//创建UISearchBar
+ (UISearchDisplayController *)createSearchDisplayControllerWithFrame:(CGRect)frame
                                                headerViewOnTableView:(UITableView *)tableView
                                                   contentsController:(UIViewController *)viewController
                                                             delegate:(id)delegete;
@end
