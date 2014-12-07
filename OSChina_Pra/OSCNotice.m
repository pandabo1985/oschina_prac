//
//  OSCNotice.m
//  OSChina_Pra
//
//  Created by pan dabo on 14-12-3.
//  Copyright (c) 2014年 afayear. All rights reserved.
//

#import "OSCNotice.h"

@implementation OSCNotice

@synthesize atmeCount;
@synthesize msgCount;
@synthesize reviewCount;
@synthesize newFansCount;

-(id)intWithParameters:(int)natmeCount andMsgCount:(int)nmsgCount andReviewCount:(int)nreviewCount
       andNewFansCount:(int)nnewFansCount{
    OSCNotice *notice = [[OSCNotice alloc] init];
    notice.atmeCount = natmeCount;
    notice.msgCount = nmsgCount;
    notice.reviewCount = nreviewCount;
    notice.newFansCount = nnewFansCount;
    return notice;
}

@end
