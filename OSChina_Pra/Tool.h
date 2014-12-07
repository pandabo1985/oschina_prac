//
//  Tool.h
//  OSChina_Pra
//
//  Created by pan dabo on 14-12-2.
//  Copyright (c) 2014年 afayear. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class OSCNotice;

@interface Tool : NSObject
+ (UIColor *)getBackgroundColor;
+ (NSString *)getOSVersion;
+ (OSCNotice *)getOSCNotice2:(NSString *)response;

+(NSMutableArray *)readStrNewsArray:(NSString *)str andOld:(NSMutableArray *)olds;
+(NSMutableArray *)readStrUserBlogsArray:(NSString *)str andOld:(NSMutableArray *)olds;

@end
