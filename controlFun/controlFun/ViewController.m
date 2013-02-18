//
//  ViewController.m
//  controlFun
//
//  Created by gfyoyo on 12-10-28.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nameField = _nameField;
@synthesize numberFild = _numberFild;
@synthesize sliderLabel = _sliderLabel;
@synthesize leftSwitch = _leftSwitch;
@synthesize rightSwitch = _rightSwitch;
@synthesize doSomethingButton = _doSomethingButton;

- (void)dealloc
{
    [_nameField release];
    [_numberFild release];
    [_sliderLabel release];
    [_leftSwitch release];
    [_rightSwitch release];
    [_doSomethingButton release];
    [super dealloc];
}

- (void)viewDidLoad
{
    // 给name textField设置开机光标
    [_nameField becomeFirstResponder];
    _sliderLabel.text = @"50";
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldDoneEditing:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)backgroudTab:(id)sender
{
    [_nameField resignFirstResponder];
    [_numberFild resignFirstResponder];
}

- (IBAction)sliderChanged:(id)sender
{
    UISlider *slider = (UISlider *)sender;
    int progressAsInt = (int)(slider.value + 0.5f);
    NSString *newText = [[NSString alloc] initWithFormat:@"%d",progressAsInt];
    _sliderLabel.text = newText;
    [newText release];
}

- (IBAction)toggleControls:(id)sender
{
    if ([sender selectedSegmentIndex] == kSwitchesSegmentIndex) {
        _leftSwitch.hidden = NO;
        _rightSwitch.hidden = NO;
        _doSomethingButton.hidden = YES;
    }
    else
    {
        _leftSwitch.hidden = YES;
        _rightSwitch.hidden = YES;
        _doSomethingButton.hidden = NO;
    }
}

- (IBAction)switchChanged:(id)sender
{
    UISwitch *whichSwitch = (UISwitch *)sender;
    BOOL setting = whichSwitch.isOn;
    [_leftSwitch setOn:setting animated:YES];
    [_rightSwitch setOn:setting animated:NO];
}

- (IBAction)buttonPressed
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:@"Are you sure?"
                                  delegate:self
                                  cancelButtonTitle:@"No way!"
                                  destructiveButtonTitle:@"Yes,I'm sure"
                                  otherButtonTitles:nil];
    [actionSheet showInView:self.view];
    [actionSheet release];
}


- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex != [actionSheet cancelButtonIndex])
    {
        NSString *msg = nil;
        
        if (_nameField.text.length > 0) {
            msg = [[NSString alloc] initWithFormat:@"You can breathe easy, %@,everything went OK.",_nameField.text];
        }
        else
        {
            msg = @"You can breathe easy, everything went OK.";
        }
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Something was done" message:msg delegate:self cancelButtonTitle:@"Phew!" otherButtonTitles:nil];
        [alert show];
        [alert release];
        [msg release];
    }
}

@end
