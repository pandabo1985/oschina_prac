//
//  TweetBase2.m
//  OSChina_Pra
//
//  Created by pan dabo on 14-12-1.
//  Copyright (c) 2014年 afayear. All rights reserved.
//

#import "TweetBase2.h"

@interface TweetBase2 ()

@end

@implementation TweetBase2

-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self myInit];
    }
    return self;
}

-(void)myInit{
    self.navigationController.view.backgroundColor = [UIColor grayColor];
    self.tabBarItem.image = [UIImage imageNamed:@"tweet"];
    self.title = @"动弹";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
