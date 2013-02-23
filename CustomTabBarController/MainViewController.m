//
//  MainViewController.m
//  CustomTabBarController
//
//  Created by And.He on 13-2-23.
//  Copyright (c) 2013年 And.He. All rights reserved.
//

#import "MainViewController.h"
#import "HomeViewController.h"
#import "ContactViewController.h"
#import "DynamicViewController.h"
#import "FindViewController.h"
#import "SettingViewController.h"

@interface MainViewController ()
{
    UIView *_bgView;
}
- (void)loadViewControllers;
- (void)customTabBarView;
- (void)layoutCustomButtons:(UIView *)bgView;
- (void)changeViewController:(UIButton *)button;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBar.hidden = YES;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self loadViewControllers];
    
    [self customTabBarView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadViewControllers
{
    // 会话
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeVC];
    [homeVC release];
    // 联系人
    ContactViewController *contactVC = [[ContactViewController alloc] init];
    UINavigationController *contactNav = [[UINavigationController alloc] initWithRootViewController:contactVC];
    [contactVC release];
    // 动态
    DynamicViewController *dynamicVC = [[DynamicViewController alloc] init];
    UINavigationController *dynamicNav = [[UINavigationController alloc] initWithRootViewController:dynamicVC];
    [dynamicVC release];
    // 发现
    FindViewController *findVC = [[FindViewController alloc] init];
    UINavigationController *findNav = [[UINavigationController alloc] initWithRootViewController:findVC];
    [findVC release];
    // 设置
    SettingViewController *settingVC = [[SettingViewController alloc] init];
    UINavigationController *settingNav = [[UINavigationController alloc] initWithRootViewController:settingVC];
    [settingVC release];
    
    NSArray *viewControllers = [NSArray arrayWithObjects:homeNav, contactNav, dynamicNav, findNav, settingNav, nil];
    [homeNav release];
    [contactNav release];
    [dynamicNav release];
    [findNav release];
    [settingNav release];
    
    self.viewControllers = viewControllers;
}

- (void)customTabBarView
{
    _bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 431, 320, 49)];
    _bgView.backgroundColor = [UIColor blackColor];
    _bgView.userInteractionEnabled = YES;
    
    [self layoutCustomButtons:_bgView];
    
    
    [self.view addSubview:_bgView];
    [_bgView release];
}

- (void)layoutCustomButtons:(UIView *)bgView
{
    // 会话
    UIImageView *homeButton = [[UIImageView alloc] initWithFrame:CGRectMake(-1, 0, 65, 49)];
    homeButton.userInteractionEnabled = YES;
    homeButton.tag = 0;
    homeButton.image = [UIImage imageNamed:@"tab_recent_nor"];
    homeButton.highlightedImage = [UIImage imageNamed:@"tab_recent_press"];
    // 第一次进来选中
    [homeButton setHighlighted:YES];
    
    [self setTabBarItemForView:homeButton title:@"会话" selected:YES];
    
    UITapGestureRecognizer *homeTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeViewController:)];
    [homeButton addGestureRecognizer:homeTap];
    [homeTap release];
    // 联系人
    UIImageView *contactButton = [[UIImageView alloc] initWithFrame:CGRectMake(63, 0, 65, 49)];
    contactButton.userInteractionEnabled = YES;
    contactButton.tag = 1;
    contactButton.image = [UIImage imageNamed:@"tab_buddy_nor"];
    contactButton.highlightedImage = [UIImage imageNamed:@"tab_buddy_press"];
    
    [self setTabBarItemForView:contactButton title:@"联系人" selected:NO];
    
    UITapGestureRecognizer *contactTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeViewController:)];
    [contactButton addGestureRecognizer:contactTap];
    [contactTap release];
    // 动态
    UIImageView *dynamicButton = [[UIImageView alloc] initWithFrame:CGRectMake(127, 0, 65, 49)];
    dynamicButton.userInteractionEnabled = YES;
    dynamicButton.tag = 2;
    dynamicButton.image = [UIImage imageNamed:@"tab_qzone_nor"];
    dynamicButton.highlightedImage = [UIImage imageNamed:@"tab_qzone_press"];
    
    [self setTabBarItemForView:dynamicButton title:@"动态" selected:NO];
    
    UITapGestureRecognizer *dynamicTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeViewController:)];
    [dynamicButton addGestureRecognizer:dynamicTap];
    [dynamicTap release];
    // 发现
    UIImageView *findButton = [[UIImageView alloc] initWithFrame:CGRectMake(191, 0, 65, 49)];
    findButton.userInteractionEnabled = YES;
    findButton.tag = 3;
    findButton.image = [UIImage imageNamed:@"tab_qworld_nor"];
    findButton.highlightedImage = [UIImage imageNamed:@"tab_qworld_press"];
    
    [self setTabBarItemForView:findButton title:@"发现" selected:NO];
    
    UITapGestureRecognizer *findTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeViewController:)];
    [findButton addGestureRecognizer:findTap];
    [findTap release];
    // 设置
    UIImageView *settingButton = [[UIImageView alloc] initWithFrame:CGRectMake(255, 0, 65, 49)];
    settingButton.userInteractionEnabled = YES;
    settingButton.tag = 4;
    settingButton.image = [UIImage imageNamed:@"tab_me_nor"];
    settingButton.highlightedImage = [UIImage imageNamed:@"tab_me_press"];
    
    [self setTabBarItemForView:settingButton title:@"设置" selected:NO];
    
    UITapGestureRecognizer *settingTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeViewController:)];
    [settingButton addGestureRecognizer:settingTap];
    [settingTap release];
    
    [bgView addSubview:homeButton];
    [bgView addSubview:contactButton];
    [bgView addSubview:dynamicButton];
    [bgView addSubview:findButton];
    [bgView addSubview:settingButton];
    
    [homeButton release];
    [contactButton release];
    [dynamicButton release];
    [findButton release];
    [settingButton release];
}

- (void)changeViewController:(UITapGestureRecognizer *)gesture
{
    NSArray *subViews = _bgView.subviews;
    for (UIView *subView in subViews) {
        if ([subView isKindOfClass:[UIImageView class]]) {
            UIImageView *imageView = (UIImageView *)subView;
            UILabel *titleLabel = (UILabel *)[imageView viewWithTag:101];
            if (imageView.tag == gesture.view.tag) {
                [imageView setHighlighted:YES];
                titleLabel.textColor = [UIColor colorWithRed:31/255.0 green:137/255.0 blue:234/255.0 alpha:1];
            } else {
                [imageView setHighlighted:NO];
                titleLabel.textColor = [UIColor whiteColor];
            }
        }
    }
    
    self.selectedIndex = gesture.view.tag;
}

- (void)setTabBarItemForView:(UIView *)view title:(NSString *)title selected:(BOOL)selected
{
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, 65, 19)];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.backgroundColor = [UIColor clearColor];
    titleLabel.font = [UIFont systemFontOfSize:12.0];
    if (selected) {
        titleLabel.textColor = [UIColor colorWithRed:31/255.0 green:137/255.0 blue:234/255.0 alpha:1];;
    } else {
        titleLabel.textColor = [UIColor whiteColor];
    }
    titleLabel.shadowColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:.5];
    titleLabel.shadowOffset = CGSizeMake(0, -1);
    titleLabel.text = title;
    titleLabel.tag = 101;
    
    [view addSubview:titleLabel];
    [titleLabel release];
}

- (void)setUnReadFlagWithIndex:(NSInteger)index
{
    NSArray *subViews = _bgView.subviews;
    for (UIView *subView in subViews) {
        if (subView.tag == index) {
            UIImageView *unReadView = [[UIImageView alloc] initWithFrame:CGRectMake(45, 5, 10, 10)];
            unReadView.image = [UIImage imageNamed:@"tab_unread"];
            unReadView.tag = index + 1;
            [subView addSubview:unReadView];
            [unReadView release];
        }
    }
}

- (void)clearUnReadFlagWithIndex:(NSInteger)index
{
    NSArray *subViews = _bgView.subviews;
    for (UIView *subView in subViews) {
        if ([subView isKindOfClass:[UIImageView class]] && subView.tag == index) {
            UIImageView *unReadView = (UIImageView *)[subView viewWithTag:index + 1];
            [unReadView removeFromSuperview];
        }
    }
}

- (void)hideTabBar
{
    self.tabBar.hidden = YES;
    [UIView animateWithDuration:0.345 animations:^{
        _bgView.frame = CGRectMake(-320, 431, 320, 49);
    } completion:^(BOOL finished) {
        _bgView.hidden = YES;
    }];
}

- (void)showTabBar
{
    self.tabBar.hidden = YES;
    [UIView animateWithDuration:0.345 animations:^{
        _bgView.hidden = NO;
        _bgView.frame = CGRectMake(0, 431, 320, 49);
    } completion:nil];
}

- (void)dealloc
{
    [_bgView release];
    [super dealloc];
}
@end
