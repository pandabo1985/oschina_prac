//
//  NewsView.h
//  OSChina_Pra
//
//  Created by pan dabo on 14-12-1.
//  Copyright (c) 2014年 afayear. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsView : UIViewController<UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *news;
    BOOL isLoading;
    BOOL isLoadOver;
    int allCount;
    BOOL _reloading;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property int catalog;

-(void)reload:(BOOL)noRefrsh;

-(void)clear;

@end
