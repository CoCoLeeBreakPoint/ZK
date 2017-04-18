//
//  MainTabBarViewController.m
//  ZK
//
//  Created by cocolee on 2017/4/18.
//  Copyright © 2017年 TR. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "MainNavbariewController.h"

#import "MyMainViewController.h"
#import "SquareMainViewController.h"
#import "QueryMainViewController.h"
#import "TitleMainViewController.h"
@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.translucent = NO;//设置不透明

    [self greatViewController];
    
    
    
}
/*
 * 初始化 UIViewController
 *
 */

-(void)greatViewController{
    

    
    QueryMainViewController *query =[[QueryMainViewController alloc]init];
    [self setUpChildViewController:query image:[UIImage imageNamed:@""] unimage:[UIImage imageNamed:@""] title:@"查询"];
    
    
    TitleMainViewController *title =[[TitleMainViewController alloc]init];
    [self setUpChildViewController:title image:[UIImage imageNamed:@""] unimage:[UIImage imageNamed:@""] title:@"取名"];


    SquareMainViewController *sq =[[SquareMainViewController alloc]init];
    [self setUpChildViewController:sq image:[UIImage imageNamed:@""] unimage:[UIImage imageNamed:@""] title:@"广场"];
    
    MyMainViewController *my =[[MyMainViewController alloc]init];
    [self setUpChildViewController:my image:[UIImage imageNamed:@""] unimage:[UIImage imageNamed:@""] title:@"我的"];
}

/**
 *  添加一个子控制器的方法
 */

-(void)setUpChildViewController:(UIViewController*)viewController image:(UIImage*)image unimage:(UIImage*)images title:(NSString*)title{
    
    
    MainNavbariewController *Nav =[[MainNavbariewController alloc]initWithRootViewController:viewController];
    Nav.title = title;
    Nav.tabBarItem.image = images;
    Nav.tabBarItem.selectedImage = image;
    
    //选中时状态 
    Nav.tabBarItem.selectedImage = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    [Nav.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:.85 green:.47 blue:.35 alpha:1], NSForegroundColorAttributeName, [UIFont fontWithName:@"Helvetica" size:12.0f],NSFontAttributeName,nil]
                                    forState:UIControlStateSelected];

    [self addChildViewController:Nav];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
