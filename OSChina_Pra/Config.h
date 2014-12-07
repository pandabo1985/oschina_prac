//
//  Config.h
//  OSChina_Pra
//
//  Created by pan dabo on 14-12-2.
//  Copyright (c) 2014年 afayear. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Config : NSObject
@property BOOL isLogin;
+(Config *) Instance;

-(NSString *)getIOSGuid;

@end
