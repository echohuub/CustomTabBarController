//
//  HomeViewController.m
//  CustomTabBarController
//
//  Created by And.He on 13-2-23.
//  Copyright (c) 2013年 And.He. All rights reserved.
//

#import "HomeViewController.h"
#import "MainViewController.h"
#import "DetailViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"会话";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor redColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(90, 100, 140, 40);
    [button setTitle:@"hello" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(test:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    // 1秒后添加未读标记
    [self performSelector:@selector(test1) withObject:nil afterDelay:5];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    MainViewController *tabBarVC = (MainViewController *)self.tabBarController;
    [tabBarVC showTabBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)test:(id)sender
{
    DetailViewController *detailVC = [[DetailViewController alloc] init];
    [self.navigationController pushViewController:detailVC animated:YES];
    [detailVC release];
}

- (void)test1
{
    MainViewController *tabBarVC = (MainViewController *)self.tabBarController;
    [tabBarVC setUnReadFlagWithIndex:0];
}

@end
