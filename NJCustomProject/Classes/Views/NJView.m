//
//  NJView.m
//  NJCustomProject
//
//  Created by NJ on 15/5/31.
//  Copyright (c) 2015年 NJ. All rights reserved.
//

#import "NJView.h"

@implementation NJView
//创建UIView
+ (UIView *)createViewWithFrame:(CGRect)frame bgColor:(UIColor *)color radius:(CGFloat)radius
{
    UIView*view=[[UIView alloc]initWithFrame:frame];
    if (color!=nil) {
        view.backgroundColor=color;
    }
    if(radius){
        view.layer.cornerRadius = radius;
        view.layer.masksToBounds = YES;
    }
    return view;
}
//创建UILabel
+ (UILabel *)createLabelWithFrame:(CGRect)frame text:(NSString *)text TextAlign:(TextAlign)textalign bgColor:(UIColor *)color fontSize:(CGFloat)size radius:(CGFloat)radius
{
    UILabel*label=[[UILabel alloc]initWithFrame:frame];
    label.font=[UIFont systemFontOfSize:size];
    //设置折行方式
    label.lineBreakMode=NSLineBreakByCharWrapping;
    //设置折行行数
    label.numberOfLines=0;
    //设置文字
    label.text=text;
    //设置对齐方式
    if(textalign ==right)
        label.textAlignment = NSTextAlignmentRight;
    else if(textalign == center)
        label.textAlignment = NSTextAlignmentCenter;
    else
        label.textAlignment = NSTextAlignmentLeft;
    
    if(color){
        label.backgroundColor = color;
    }
    if(radius){
        label.layer.cornerRadius = radius;
        label.layer.masksToBounds = YES;
    }
    return label;
}
//创建UILabel
+ (UILabel *)createLabelWithFrame:(CGRect)frame text:(NSString *)text TextAlign:(TextAlign)textalign
{
    UILabel*label=[[UILabel alloc]initWithFrame:frame];
    //设置文字
    label.text=text;
    //设置对齐方式
    if(textalign ==right)
        label.textAlignment = NSTextAlignmentRight;
    else if(textalign == center)
        label.textAlignment = NSTextAlignmentCenter;
    else
        label.textAlignment = NSTextAlignmentLeft;
    return label;
}
//创建UIButton
+ (UIButton *)createButtonWithFrame:(CGRect)frame title:(NSString *)title imageName:(NSString*)imageName bgImageName:(NSString*)bgImageName radius:(CGFloat)radius target:(id)target action:(SEL)sel
{
    UIButton * button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=frame;
    [button setTitleColor:[UIColor colorWithRed:19/255.0 green:156/255.0 blue:241/255.0 alpha:1] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:15];
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
    }
    if (imageName) {
        [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    if (bgImageName) {
        [button setBackgroundImage:[UIImage imageNamed:bgImageName] forState:UIControlStateNormal];
    }
    if(radius){
        button.layer.cornerRadius = radius;
    }
    [button addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    return button;
}
//创建UIButton
+ (UIButton *)createButtonWithFrame:(CGRect)frame title:(NSString *)title bgColor:(UIColor *)color radius:(CGFloat)radius target:(id)target action:(SEL)sel
{
    UIButton * button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=frame;
    if (title) {
        [button setTitle:title forState:UIControlStateNormal];
    }
    if(color){
        button.backgroundColor = color;
    }
    if(radius){
        button.layer.cornerRadius = radius;
    }
    [button addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    return button;
}
//创建UITextField
+ (UITextField *)createTextFieldWithFrame:(CGRect)frame placeholder:(NSString *)placeholder bgImageName:(NSString*)imageName leftView:(UIView*)leftView rightView:(UIView*)rightView isPassWord:(BOOL)isPassWord delegate:(id)delegate
{
    UITextField * textField=[[UITextField alloc]initWithFrame:frame];
    if (placeholder) {
        textField.placeholder=placeholder;
    }
    if (imageName) {
        textField.background=[UIImage imageNamed:imageName];
    }
    if (leftView) {
        textField.leftView=leftView;
        textField.leftViewMode=UITextFieldViewModeAlways;
    }
    if (rightView) {
        textField.rightView=rightView;
        textField.rightViewMode=UITextFieldViewModeAlways;
    }
    if (isPassWord) {
        textField.secureTextEntry=YES;
    }
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    textField.delegate = delegate;
    return textField;
}
//创建UIImageView
+ (UIImageView *)createImageViewFrame:(CGRect)frame imageName:(NSString*)imageName isUIEnabled:(BOOL)UIEnabled
{
    UIImageView*imageView=[[UIImageView alloc]initWithFrame:frame];
    if (imageName) {
        imageView.image=[UIImage imageNamed:imageName];
    }
    imageView.userInteractionEnabled = UIEnabled;
    return imageView;
}
//创建UITableView
+ (UITableView *)createTableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style delegate:(id)delegate dataSource:(id)dataSource
{
    UITableView * tableView = [[UITableView alloc]initWithFrame:frame style:style];
    tableView.delegate = delegate;
    tableView.dataSource = dataSource;
    return tableView;
}

//创建小菊花
+ (UIView *)createActiveViewWithFrame:(CGRect)frame
{
    //小菊花
    UIView * aivView = [NJView createViewWithFrame:CGRectMake(frame.origin.x, frame.origin.y, 100, 50) bgColor:[UIColor colorWithWhite:0 alpha:0.5] radius:8];
    UILabel * lbTip = [NJView createLabelWithFrame:CGRectMake(36, 15, 60, 20) text:@"正在加载" TextAlign:left bgColor:nil fontSize:14 radius:0];
    lbTip.textColor = [UIColor whiteColor];
    [aivView addSubview:lbTip];
    
    UIActivityIndicatorView * aiv = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
    aiv.center = CGPointMake(20, 25);
    aiv.color = [UIColor whiteColor];
    [aiv startAnimating];
    [aivView  addSubview:aiv];
    return  aivView;
}

//创建UISearchBar
+ (UISearchBar *)createSearchBarWithFrame:(CGRect)frame headerViewOnTableView:(UITableView *)tableView
{
    //创建UISearchBar
    UISearchBar *searchBar = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    //设置成为myTableView的头部视图
    tableView.tableHeaderView = searchBar;
    
    return searchBar;
}

//创建UISearchDisplayController
+ (UISearchDisplayController *)createSearchDisplayControllerWithSearchBar:(UISearchBar *)searchBar contentsController:(UIViewController *)viewController delegate:(id)delegete
{
    //UISearchDisplayController 与UISearch搭配使用 可以实现搜索时的联动效果
    UISearchDisplayController *dvc = [[UISearchDisplayController alloc]initWithSearchBar:searchBar contentsController:viewController];
    
    dvc.delegate = delegete;
    //UiSearchBarDisplayController自身带了一个tableview yoo
    dvc.searchResultsDataSource = delegete;
    dvc.searchResultsDelegate = delegete;
    
    return dvc;
}

//创建UISearchDisplayController
+ (UISearchDisplayController *)createSearchDisplayControllerWithFrame:(CGRect)frame headerViewOnTableView:(UITableView *)tableView contentsController:(UIViewController *)viewController delegate:(id)delegete
{
    //创建UISearchBar
    UISearchBar *searchBar = [[UISearchBar alloc]initWithFrame:frame];
    //设置成为myTableView的头部视图
    tableView.tableHeaderView = searchBar;
    //UISearchDisplayController 与UISearch搭配使用 可以实现搜索时的联动效果
    UISearchDisplayController *dvc = [[UISearchDisplayController alloc]initWithSearchBar:searchBar contentsController:viewController];
    
    dvc.delegate = delegete;
    //UiSearchBarDisplayController自身带了一个tableview yoo
    dvc.searchResultsDataSource = delegete;
    dvc.searchResultsDelegate = delegete;
    
    return dvc;
}
@end