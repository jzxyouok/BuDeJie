//
//  AppDelegate.m
//  BuDeJie
//
//  Created by hemengxiang on 16/3/12.
//  Copyright © 2016年 hemengxiang. All rights reserved.
//

#import "AppDelegate.h"
#import "HMXTabBarController.h"
#import "HMXADViewController.h"
#import <AFNetworkReachabilityManager.h>

@interface AppDelegate ()


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //1.创建窗口
    self.window = [[UIWindow alloc] init];
    
////    //2.设置窗口的根控制器
//    HMXTabBarController *tabBarVc = [[HMXTabBarController alloc] init];
//    self.window.rootViewController = tabBarVc;
    
    //展示广告控制器
    HMXADViewController *ad = [[HMXADViewController alloc] init];
    self.window.rootViewController = ad;
    
    //开启网络监测
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    
    //3.显示窗口
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
