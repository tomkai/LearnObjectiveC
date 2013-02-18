//
//  AppDelegate.m
//  tabBar
//
//  Created by gfyoyo on 12-11-11.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    FirstViewController *fvc = [[FirstViewController alloc] init];
    SecondViewController *svc = [[SecondViewController alloc] init];
    UINavigationController *snav = [[UINavigationController alloc] initWithRootViewController:svc];
    [svc release];
    ThirdViewController *tvc = [[ThirdViewController alloc] init];
    FourthViewController *fourvc = [[FourthViewController alloc] init];
    UINavigationController *fourav = [[UINavigationController alloc] initWithRootViewController:fourvc];
    [fourvc release];
    
    self.myTabBar = [[[UITabBarController alloc] init] autorelease];
    self.myTabBar.viewControllers = @[fvc,snav,tvc,fourav];
    [fvc release];
    [snav release];
    [tvc release];
    [fourav release];
    
    self.window.rootViewController = self.myTabBar;
    
    
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
