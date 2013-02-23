CustomTabBarController
======================

CustomTabBarController是一个自定义的UITabBarController，类似于iPhone版的手机QQ

##预览
###HomeViewController无未读消息
![Image text](http://github.com/heqingbao/CustomTabBarController/raw/master/Screenshots/home.jpg)
###ContactViewController
![Image text](http://github.com/heqingbao/CustomTabBarController/raw/master/Screenshots/contact.jpg)
###DynamicViewController
![Image text](http://github.com/heqingbao/CustomTabBarController/raw/master/Screenshots/dynamic.jpg)
###FindViewController
![Image text](http://github.com/heqingbao/CustomTabBarController/raw/master/Screenshots/find.jpg)
###SettingViewController
![Image text](http://github.com/heqingbao/CustomTabBarController/raw/master/Screenshots/setting.jpg)
###HomeViewController有未读消息
![Image text](http://github.com/heqingbao/CustomTabBarController/raw/master/Screenshots/home1.jpg)
###DetailViewController隐藏TabBar
![Image text](http://github.com/heqingbao/CustomTabBarController/raw/master/Screenshots/detail.jpg)
##使用方法

导入头文件
```objc
#import "MainViewController.h"
```
修改MainViewController中的loadViewControllers方法创建和初始化
```objc
- (void)layoutViewControllers
{...}
```
显示TabBar
```objc
MainViewController *tabBarVC = (MainViewController *)self.tabBarController;
[tabBarVC showTabBar];
```
隐藏TabBar
```objc
MainViewController *tabBarVC = (MainViewController *)self.tabBarController;
[tabBarVC hideTabBar];
```
设置有未读消息状态
```objc
MainViewController *tabBarVC = (MainViewController *)self.tabBarController;
[tabBarVC setUnReadFlagWithIndex:0];
```
清除未读消息状态
```objc
MainViewController *tabBarVC = (MainViewController *)self.tabBarController;
[tabBarVC clearUnReadFlagWithIndex:0];
```
##测试环境
- iOS >= 4.3
- ARC
