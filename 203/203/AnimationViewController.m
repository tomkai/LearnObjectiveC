//
//  AnimationViewController.m
//  203
//
//  Created by gfyoyo on 12-11-25.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "AnimationViewController.h"
#import <QuartzCore/QuartzCore.h>

#define kDuration 0.7   // 动画持续时间(秒)

@implementation AnimationViewController

@synthesize blueView;
@synthesize greenView;
@synthesize typeID;


//@interface AnimationViewController ()
//
//@end

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    
    CATransition *animation = [CATransition animation];
    animation.delegate = self;
    animation.duration = kDuration;
    animation.timingFunction = UIViewAnimationCurveEaseInOut;
    
    animation.type = @"oglFlip";
    
    switch (self.typeID) {
        case 0:
            animation.subtype = kCATransitionFromLeft;
            break;
        case 1:
            animation.subtype = kCATransitionFromBottom;
            break;
        case 2:
            animation.subtype = kCATransitionFromRight;
            break;
        case 3:
            animation.subtype = kCATransitionFromTop;
            break;
        default:
            break;
    }
    self.typeID += 1;
    if (self.typeID > 3) {
        self.typeID = 0;
    }
    
    NSUInteger green = [[self.view subviews] indexOfObject:self.greenView];
    NSUInteger blue = [[self.view subviews] indexOfObject:self.blueView];
    [self.view exchangeSubviewAtIndex:green withSubviewAtIndex:blue];
    
    [[self.view layer] addAnimation:animation forKey:@"animation"];
}

- (void)viewDidUnload {
    self.blueView = nil;
    self.greenView = nil;
    [super viewDidUnload];
}


- (void)dealloc {
    [blueView release];
    [greenView release];
    [super dealloc];
}
@end
