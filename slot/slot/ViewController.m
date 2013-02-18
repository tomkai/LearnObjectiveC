//
//  ViewController.m
//  slot
//
//  Created by gfyoyo on 12-11-25.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize logoimage = _logoimage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // set logo
    _logoimage.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"logo_light_0.png"],[UIImage imageNamed:@"logo_light_1.png"], [UIImage imageNamed:@"logo_light_2.png"], [UIImage imageNamed:@"logo_light_3.png"], nil];
    
    
    
    
    // set logo
    _logoImage.animationImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"logo_light_0.png"], [UIImage imageNamed:@"logo_light_1.png"], [UIImage imageNamed:@"logo_light_2.png"], [UIImage imageNamed:@"logo_light_3.png"], nil];
    _logoImage.animationDuration = 1.0f;
    [_logoImage startAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
