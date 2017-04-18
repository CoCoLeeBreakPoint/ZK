//
//  MainNavbariewController.m
//  ZK
//
//  Created by cocolee on 2017/4/18.
//  Copyright © 2017年 TR. All rights reserved.
//

#import "MainNavbariewController.h"

@interface MainNavbariewController ()

@end

@implementation MainNavbariewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setUpNavBar];//自定义新的NavgationBar
    
   
}

/*
 *   设置导航栏
 *
 */
-(void)setUpNavBar{
    
    //设置背景
    UINavigationBar *appearance =[UINavigationBar appearance];
//  [appearance setBackgroundColor:[UIColor colorWithRed:.92 green:.33 blue:.20 alpha:1]];
   
    //IOS7 之后都用这个方法
     [appearance setBarTintColor:[UIColor colorWithRed:.93 green:.31 blue:.18 alpha:1]];
    
    //设置字体颜色
    NSMutableDictionary *textAtt =[NSMutableDictionary dictionary];
    textAtt[NSForegroundColorAttributeName] = [UIColor whiteColor];
    
    [appearance setTitleTextAttributes:textAtt];
    
    
}

/**
 *  设置状态栏字体为白色
 *
 *  @return UIStatusBarStyle
 */
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
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
