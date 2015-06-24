//
//  NJConstants.h
//  NJCustomProject
//
//  Created by NJ on 15/5/31.
//  Copyright (c) 2015年 NJ. All rights reserved.
//

#ifndef NJCustomProject_NJConstants_h
#define NJCustomProject_NJConstants_h

#define iOS_VERSION [[UIDevice currentDevice] systemVersion]

#pragma mark - COLOR

#define COLORR_CLEAR            [UIColor clearColor]
#define COLORR_WHITE            [UIColor whiteColor]
#define COLORR_BLACK            [UIColor blackColor]
#define COLORR_GRAY             [UIColor grayColor]
#define COLORR_RANDOM           [UIColor colorWithRed:arc4random() % 255 / 255.0          \
green:arc4random() % 255 / 255.0          \
blue:arc4random() % 255 / 255.0 alpha:1]
#define COLOR_RGB(r, g, b)     [UIColor colorWithRed:r / 255.f green:g / 255.f blue:b / 255.f alpha:1]
#define COLOR_RGBA(r, g, b ,a) [UIColor colorWithRed:r / 255.f green:g / 255.f blue:b / 255.f alpha:a]
#define Color_HEX(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000)>>16))/255.0            \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0             \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define COLOR_SYSBLUE   COLOR_RGB(0, 68, 255)

#pragma mark - FRAME

#define SCREEN          [UIScreen mainScreen].bounds
#define SCREEN_HEIGHT   [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH    [UIScreen mainScreen].bounds.size.width
#define SCREEN_CENTERX  SCREEN_WIDTH/2
#define SCREEN_CENTERY  SCREEN_HEIGHT/2

//应用尺寸(不包括状态栏,通话时状态栏高度不是20，所以需要知道具体尺寸)
#define CONTENT_HEIGHT   [UIScreen mainScreen].applicationFrame.size.height
#define CONTENT_WIDTH    [UIScreen mainScreen].applicationFrame.size.width
#define CONTENT          CGRectMake(0, 0, CONTENT_WIDTH, CONTENT_HEIGHT)
#define CONTENT_CENTERX  CONTENT_WIDTH/2
#define CONTENT_CENTERY  CONTENT_HEIGHT/2

//NAVI
#define NAVI_HEIGHT (CONTENT_HEIGHT - 44)
#define NAVI_CONTENT CGRectMake(0, 0, SCREEN_WIDTH, NAVI_HEIGHT)

#pragma mark - NSLOG

#ifdef DEBUG
#define LOG(...) NSLog(__VA_ARGS__)
#else
#define LOG(...);
#endif

#define LOG_FUNC LOG(@"%s",__func__)
#define LOG_FFAILD LOG(@"%s::***::Faild",__func__)
#define LOG_RECT(rect) LOG(@"%s x:%.4f, y:%.4f, w:%.4f, h:%.4f", #rect, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
#define LOG_SIZE(size) LOG(@"%s w:%.4f, h:%.4f", #size, size.width, size.height)
#define LOG_POINT(point) LOG(@"%s x:%.4f, y:%.4f", #point, point.x, point.y)
#define LOG_RANGE(range) LOG(@"%s location:%d length:%d",#range,range.location,range.length)
#define LOG_DATA(data) LOG(@"%@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding])


#define USER_DEFAULT [NSUserDefaults standardUserDefaults]

#endif
