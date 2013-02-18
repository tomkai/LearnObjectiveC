//
//  ViewController.m
//  tImage
//
//  Created by gfyoyo on 12-10-21.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UIImage *myImg = [UIImage imageNamed:@"test.png"];
    secondImg.image = myImg;
    secondImg.frame = CGRectMake(secondImg.frame.origin.x, secondImg.frame.origin.y, secondImg.frame.size.width, secondImg.frame.size.height);
    
    
    
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [secondImg release];
    [thirdImg release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setSecondImg:nil];
    [self setThirdImg:nil];
    [super viewDidUnload];
}
@end
