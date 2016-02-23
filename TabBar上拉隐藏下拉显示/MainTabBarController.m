//
//  MainTabBarController.m
//  TabBar上拉隐藏下拉显示
//
//  Created by dpfst520 on 16/2/22.
//  Copyright © 2016年 NttData.dang. All rights reserved.
//

#import "MainTabBarController.h"

#import "ViewController.h"


@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ViewController *vc = [[ViewController alloc]init];
    
    UINavigationController *nc = [[UINavigationController alloc]initWithRootViewController:vc];
    
    nc.title = @"title";
    
    self.viewControllers = @[nc];
    
}

- (void)addChildViewController:(UIViewController *)childViewController image:(NSString *)image selectedImage:(NSString *)selectedImage title:(NSString *)title
{
    //标题
    childViewController.title = title;
    childViewController.view.backgroundColor = [UIColor whiteColor];
    
    //tabBarItem图片
    childViewController.tabBarItem.image = [UIImage imageNamed:image];
    childViewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //tabBarItem字体的设置
    //正常状态
    NSMutableDictionary *normalText = [NSMutableDictionary dictionary];
    normalText[NSForegroundColorAttributeName] = [UIColor colorWithRed:123/255.0 green:123/255.0 blue:123/255.0 alpha:1.0];
    [childViewController.tabBarItem setTitleTextAttributes:normalText forState:UIControlStateNormal];
    
    //选中状态
    NSMutableDictionary *selectedText = [NSMutableDictionary dictionary];
    selectedText[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childViewController.tabBarItem setTitleTextAttributes:selectedText forState:UIControlStateSelected];

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
