//
//  AppDelegate.m
//  OSChina_Pra
//
//  Created by one afayear on 14-11-30.
//  Copyright (c) 2014年 afayear. All rights reserved.
//

#import "PraAppDelegate.h"
#import "MTLog.h"

@interface PraAppDelegate ()

@end

@implementation PraAppDelegate


@synthesize window = _window;
@synthesize tabBarController = _tabBarController;
@synthesize settingView;
@synthesize newsBase;
@synthesize postBase;
@synthesize tweetBase;
@synthesize profileBase;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [application setStatusBarHidden:NO withAnimation:UIStatusBarAnimationFade];
    self.tweetBase = [[TweetBase2 alloc] initWithNibName:@"TweetBase2" bundle:nil];
    self.postBase = [[PostBase alloc] initWithNibName:@"PostBase" bundle:nil];
    self.newsBase = [[NewsBase alloc] initWithNibName:@"NewsBase" bundle:nil];
    self.profileBase = [[ProfileBase alloc] initWithNibName:@"ProfileBase" bundle:nil];
    self.settingView = [[SettingView alloc] initWithNibName:@"SettingView" bundle:nil];
    UINavigationController *tweetNav = [[UINavigationController alloc] initWithRootViewController:self.tweetBase];
    UINavigationController *postNav = [[UINavigationController alloc] initWithRootViewController:self.postBase];
    UINavigationController *newsNav = [[UINavigationController alloc] initWithRootViewController:self.newsBase];
    UINavigationController *profileNav = [[UINavigationController alloc] initWithRootViewController:self.profileBase];
    UINavigationController *settingNav = [[UINavigationController alloc] initWithRootViewController:self.settingView];
    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController.delegate = self;
    self.tabBarController.viewControllers = [NSArray arrayWithObjects:newsNav,postNav,tweetNav,profileNav,settingNav, nil];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = self.tabBarController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark UITab双击事件
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    
}


@end
