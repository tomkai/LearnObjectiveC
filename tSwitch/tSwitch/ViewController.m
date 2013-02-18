//
//  ViewController.m
//  tSwitch
//
//  Created by gfyoyo on 12-10-28.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize switchAdd = _switchAdd;

- (void)dealloc
{
    [labelText release];
    [_switchAdd release];
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

- (void) switchAction:(id) sender
{
    NSLog(@"switch value = %c",[sender isOn]);
//    labelText.text = (@"switch value = %@", [sender isOn]);
}

- (UISwitch *) switchAdd
{
    if ( _switchAdd == nil ) {
        CGRect position = CGRectMake(200.0f, 20.0f, 80.0f, 25.0f);
        _switchAdd = [[UISwitch alloc]initWithFrame:position];
        
        [_switchAdd addTarget:self action:@selector(switchAction:) forControlEvents:UIControlEventValueChanged];
        
        
    }
    return _switchAdd;
}


- (IBAction)valueChanged:(id)sender {
}

- (IBAction)offSwitch:(id)sender {
}
@end
