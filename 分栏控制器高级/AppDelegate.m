//
//  AppDelegate.m
//  分栏控制器高级
//
//  Created by zh dk on 2017/8/25.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VC4.h"
#import "VC5.h"
#import "VC6.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    
    //创建一组视图控制器
    VCFirst *vc01 = [[VCFirst alloc] init];
    VCSecond *vc02 = [[VCSecond alloc] init];
    VCThird *vc03 = [[VCThird alloc] init];
    VC4 *vc04 = [[VC4 alloc] init];
    VC5 *vc05 = [[VC5 alloc]init];
    VC6 *vc06 = [[VC6 alloc]init];
    
    vc01.title = @"视图1";
    vc02.title = @"视图2";
    vc03.title = @"视图3";
    vc04.title = @"视图4";
    vc05.title = @"视图5";
    vc06.title = @"视图6";
    
    //创建数组
    NSArray *arrayVC = [NSArray arrayWithObjects:vc01,vc02,vc03,vc04,vc05,vc06 ,nil];
    
    UITabBarController *tbc = [[UITabBarController alloc] init];
    tbc.viewControllers = arrayVC;
    tbc.tabBar.translucent = NO;
    
    //改变工具栏颜色
    tbc.tabBar.barTintColor = [UIColor redColor];
    //改变按钮风格颜色
    tbc.tabBar.tintColor = [UIColor blackColor];
    self.window.rootViewController = tbc;
    tbc.delegate = self;
    return YES;
}

-(void) tabBarController:(UITabBarController *)tabBarController willBeginCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers{
    NSLog(@"编辑器前");
}

-(void) tabBarController:(UITabBarController *)tabBarController willEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed
{
    NSLog(@"即将结束前");
}
-(void) tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers changed:(BOOL)changed{
 
    if(changed == YES){
        NSLog(@"顺序已经改变");
    }
    NSLog(@"已经结束编辑");
}

-(void) tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    NSLog(@"选中控制器对象");
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
