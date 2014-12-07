//
//  NewsBase.h
//  OSChina_Pra
//
//  Created by pan dabo on 14-12-1.
//  Copyright (c) 2014年 afayear. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsView.h"

@interface NewsBase : UIViewController

@property(strong, nonatomic) UISegmentedControl *segment_title;
@property(strong, nonatomic) NewsView *newsView;

-(NSString *)getSegmentTitle;
- (void)myInit;
@end
