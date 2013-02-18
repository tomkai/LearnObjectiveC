//
//  ViewController.m
//  UItest
//
//  Created by gfyoyo on 12-10-14.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)addLable
{
//    [_NickName];
    
    
    
    _NickName = [[UILabel alloc]initWithFrame:CGRectMake(20, 20, 100, 20)];
    
    
}


- (void)viewDidLoad
{
    _NickName.text = @"hello world";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_NickName release];
    [super dealloc];
}
@end
