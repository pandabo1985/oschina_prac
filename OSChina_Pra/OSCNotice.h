//
//  OSCNotice.h
//  OSChina_Pra
//
//  Created by pan dabo on 14-12-3.
//  Copyright (c) 2014年 afayear. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OSCNotice : NSObject

@property int atmeCount;
@property int msgCount;
@property int reviewCount;
@property int newFansCount;

-(id)intWithParameters:(int)atmeCount andMsgCount:(int)msgCount andReviewCount:(int)reviewCount
       andNewFansCount:(int)newFansCount;
@end
