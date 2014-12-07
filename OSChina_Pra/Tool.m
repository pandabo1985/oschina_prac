//
//  Tool.m
//  OSChina_Pra
//
//  Created by pan dabo on 14-12-2.
//  Copyright (c) 2014年 afayear. All rights reserved.
//

#import "Tool.h"
#include "OSCNotice.h"

@implementation Tool
+ (UIColor *)getBackgroundColor{
     return [UIColor colorWithRed:235.0/255 green:235.0/255 blue:243.0/255 alpha:1.0];
}
+ (NSString *)getOSVersion
{
    return [NSString stringWithFormat:@"OSChina.NET/%@/%@/%@/%@",AppVersion,[UIDevice currentDevice].systemName,[UIDevice currentDevice].systemVersion, [UIDevice currentDevice].model];
}
+ (OSCNotice *)getOSCNotice2:(NSString *)response{
    TBXML *xml = [[TBXML alloc] initWithXMLString:response error:Nil];
    TBXMLElement *root = xml.rootXMLElement;
    if (!root) {
        return nil;
    }
    TBXMLElement *notice = [TBXML childElementNamed:@"notice" parentElement:root];
    if (!notice) {
        [Config Instance].isLogin = NO;
        [[NSNotificationCenter defaultCenter] postNotificationName:@"login" object:@"0"];
        return nil;
    }else{
        [[NSNotificationCenter defaultCenter] postNotificationName:@"login" object:@"1"];
        [Config Instance].isLogin = YES;
    }
 
    return nil;
}


+(NSMutableArray *)readStrNewsArray:(NSString *)str andOld:(NSMutableArray *)olds
{
    TBXML *xml = [[TBXML alloc] initWithXMLString:str error:nil];
    TBXMLElement *root = xml.rootXMLElement;
    NSMutableArray *news = [[NSMutableArray alloc] initWithCapacity:20];
    if (!root) {
        return nil;
    }
    
    return nil;
}
@end
