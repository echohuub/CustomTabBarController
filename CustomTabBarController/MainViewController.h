//
//  MainViewController.h
//  CustomTabBarController
//
//  Created by And.He on 13-2-23.
//  Copyright (c) 2013年 And.He. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UITabBarController

- (void)hideTabBar;
- (void)showTabBar;
- (void)setUnReadFlagWithIndex:(NSInteger)index;
- (void)clearUnReadFlagWithIndex:(NSInteger)index;
@end
