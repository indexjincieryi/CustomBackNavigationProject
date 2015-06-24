//
//  YTAPPManager.m
//  NJCustomProject
//
//  Created by NJ on 15/5/29.
//  Copyright (c) 2015年 NJ. All rights reserved.
//

#import "YTAPPManager.h"
@implementation YTAPPManager

+ (YTAPPManager *)sharedYTAPPManager{
    static YTAPPManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[YTAPPManager alloc] init];
    });
    return manager;
}
- (CGFloat)adaptHeight{
    if (SCREEN_WIDTH < 321) {
        return 0.f;
    }else if(SCREEN_WIDTH < 376){
        return 10.f;
    }else if(SCREEN_WIDTH < 415){
        return 20.f;
    }else{
        return 0.f;
    }
}

@end
