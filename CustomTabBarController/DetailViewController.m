//
//  DetailViewController.m
//  CustomTabBarController
//
//  Created by And.He on 13-2-24.
//  Copyright (c) 2013年 And.He. All rights reserved.
//

#import "DetailViewController.h"
#import "MainViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.hidesBottomBarWhenPushed = YES;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)viewWillAppear:(BOOL)animated
{
    MainViewController *tabBarVC = (MainViewController *)self.tabBarController;
    [tabBarVC hideTabBar];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
