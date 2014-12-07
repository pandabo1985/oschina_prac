//
//  NewsBase.m
//  OSChina_Pra
//
//  Created by pan dabo on 14-12-1.
//  Copyright (c) 2014年 afayear. All rights reserved.
//

#import "NewsBase.h"

@interface NewsBase ()

@end

@implementation NewsBase

@synthesize segment_title;
@synthesize newsView;

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self myInit];
    }
    return self;
}

-(void)myInit{
    self.tabBarItem.image = [UIImage imageNamed:@"info"];
    self.tabBarItem.title = @"综合";
    NSArray *segmengTextContent = [NSArray arrayWithObjects:@"资讯",@"博客",@"推荐阅读", nil];
    self.segment_title = [[UISegmentedControl alloc] initWithItems:segmengTextContent];
    self.segment_title.selectedSegmentIndex = 0;
    self.segment_title.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    self.segment_title.segmentedControlStyle = UISegmentedControlStyleBar;
    
    self.segment_title.frame = CGRectMake(0, 0, 320, 30);
    [self.segment_title addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    self.navigationItem.titleView = self.segment_title;
    
    self.newsView = [[NewsView alloc] init];
    self.newsView.catalog = 1;
    
    [self addChildViewController:self.newsView];
    self.newsView.view.frame = self.view.bounds;
    self.newsView.view.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [btn addTarget:self action:@selector(clickSearch:) forControlEvents:UIControlEventTouchUpInside];
    if ([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0) {
        [btn setImage:[UIImage imageNamed:@"searchBlue"] forState:UIControlStateNormal];
        btn.imageEdgeInsets =  UIEdgeInsetsMake(0, 10, 0, -10);
    }else{
        [btn setImage:[UIImage imageNamed:@"searchWhite"] forState:UIControlStateNormal];
    }
    
    UIBarButtonItem *btnSearch =[[UIBarButtonItem alloc] initWithCustomView:btn];
    self.navigationItem.rightBarButtonItem = btnSearch;
    if ([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    
}
-(void)segmentAction:(id)sender{
    
}
-(void)clickSearch:(id)sender{
    
}

-(NSString *)getSegmentTitle{
    switch (self.segment_title.selectedSegmentIndex) {
        case 0:
            return @"资讯";
        case 1:
            return @"博客";
       case 2:
            return @"推荐阅读";
    }
    return @"";
}

#pragma mark -View lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)viewDidUnload{
    [super viewDidUnload];
    self.segment_title = nil;
    self.newsView =nil;
}

-(void)viewDidAppear:(BOOL)animated{
    if (self.newsView==nil||self.segment_title==nil) {
        [self myInit];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
