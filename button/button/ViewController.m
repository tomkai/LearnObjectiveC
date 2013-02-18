//
//  ViewController.m
//  button
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
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnEvent:(id)sender {
    NSLog(@"button1");
}

- (IBAction)btn2Event:(id)sender {
    NSLog(@"button2");
}

- (IBAction)btn3Event:(id)sender {
    NSLog(@"button3");
}

- (IBAction)btn4Event:(id)sender {
    NSLog(@"button4");
}

- (IBAction)btn5Event:(id)sender {
    NSLog(@"button5");
}

- (IBAction)btn6Event:(id)sender {
    NSLog(@"button6");
}
@end
