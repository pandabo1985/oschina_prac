//
//  AppDelegate.h
//  OSChina_Pra
//
//  Created by one afayear on 14-11-30.
//  Copyright (c) 2014年 afayear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsBase.h"
#import "PostBase.h"
#import "ProfileBase.h"
#import "SettingView.h"
#import "TweetBase2.h"

@interface PraAppDelegate : UIResponder <UIApplicationDelegate,UITabBarControllerDelegate>
{
    int m_lastTabIndex;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabBarController;
@property (strong, nonatomic) NewsBase *newsBase;
@property (strong, nonatomic) PostBase *postBase;
@property (strong, nonatomic) TweetBase2 *tweetBase;
@property (strong, nonatomic) ProfileBase *profileBase;
@property (strong, nonatomic) SettingView *settingView;

@end

