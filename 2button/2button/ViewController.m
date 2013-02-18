//
//  ViewController.m
//  2button
//
//  Created by gfyoyo on 12-10-29.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize leftButton = _leftButton;
@synthesize rightButton = _rightButton;
@synthesize leftSheet = _leftSheet;
@synthesize rightSheet = _rightSheet;

- (void)dealloc
{
    [_leftSheet release];
    [_rightSheet release];
    [_leftButton release];
    [_rightButton release];
    [super dealloc];
}

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

- (IBAction)leftButtonPressed
{
    _leftSheet = [[UIActionSheet alloc] initWithTitle:@"i'm leftsheet" delegate:self cancelButtonTitle:@"no" destructiveButtonTitle:@"yes" otherButtonTitles:nil];
    [_leftSheet showInView:self.view];
    [_leftSheet release];
}

- (IBAction)rightButtonPressed
{
    _rightSheet = [[UIActionSheet alloc] initWithTitle:@"i'm rightsheet" delegate:self cancelButtonTitle:@"no" destructiveButtonTitle:@"yes" otherButtonTitles:nil];
    [_rightSheet showInView:self.view];
    [_rightButton release];
}

- (void) actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (actionSheet == _leftSheet) {
        NSLog(@"i'm left");
    }
    else
    {
        NSLog(@"i'm right");
    }
}

@end
