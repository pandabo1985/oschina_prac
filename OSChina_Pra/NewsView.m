//
//  NewsView.m
//  OSChina_Pra
//
//  Created by pan dabo on 14-12-1.
//  Copyright (c) 2014年 afayear. All rights reserved.
//

#import "NewsView.h"
#import "Tool.h"

@interface NewsView ()

@end

@implementation NewsView

#pragma mark -View LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    news = [[NSMutableArray alloc] initWithCapacity:20];
    self.tableView.backgroundColor = [Tool getBackgroundColor];
    [self reload:YES];
    //适配iOS7uinavigationbar遮挡tableView的问题
    if ([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -UITableView DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

#pragma mark -UITableVeiw Delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

#pragma mark -load data
-(void)reload:(BOOL)noRefrsh{
    if (isLoading || isLoadOver) {
        return;
    }
    if (!noRefrsh) {
        allCount = 0;
    }
    int pageIndex = allCount/20;
    NSString *url;
    switch (self.catalog) {
        case 1:
            url = [NSString stringWithFormat:@"%@?catalog=%d&pageIndex=%d&pageSize=%d",api_news_list,1,pageIndex,20];
            break;
        case 2:
            url = [NSString stringWithFormat:@"%@?type=latest&pageIndex=%d&pageSize=%d",api_blog_list, pageIndex,20];
            break;
        case 3:
            url = [NSString stringWithFormat:@"%@?type=recommend&pageIndex=%d&pageSize=%d",api_blog_list,pageIndex,20];
            break;
        default:
            break;
    }
    
    [[AFOSCClient sharedClient] getPath:url parameters:Nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //not finished
        [Tool getOSCNotice2:operation.responseString];
        isLoading = NO;
        if (!noRefrsh) {
            [self clear];
        }
        
        @try {
            NSMutableArray *newNews = self.catalog <=1 ?
            [Tool ]:[Tool];
        }
        @catch (NSException *exception) {
            <#Handle an exception thrown in the @try block#>
        }
        @finally {
            <#Code that gets executed whether or not an exception is thrown#>
        }
        
    }failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
    
}



-(void)clear{
    allCount = 0;
    [news removeAllObjects];
    isLoadOver = NO;
}

@end
