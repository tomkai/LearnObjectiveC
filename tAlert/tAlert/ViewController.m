//
//  ViewController.m
//  tAlert
//
//  Created by gfyoyo on 12-10-28.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textNormal;

- (void)viewDidLoad
{
    [myTf becomeFirstResponder];
    [self.view addSubview:self.textNormal];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            NSLog(@"0");
            break;
        case 1:
            NSLog(@"1");
            break;
        case 2:
            NSLog(@"2");
            break;
        case 3:
            NSLog(@"3");
            break;
        default:
            break;
    }
    
}


- (IBAction)showAlert:(id)sender {
    UIAlertView *av = [[UIAlertView alloc]initWithTitle:@"标题" message:@"这是一个跳出的警告消息" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"按钮1",@"按钮2", nil];
    [av setTitle:@"重写标题"];

    
    [av show];
    [av release];
}

- (void) performdismiss:(UIAlertView *)objectView
{
    [objectView dismissWithClickedButtonIndex:0 animated:NO];
}

- (IBAction)nocancelAlert:(id)sender {
    UIAlertView *nocancel = [[UIAlertView alloc]initWithTitle:nil message:@"Loading" delegate:nil cancelButtonTitle:nil otherButtonTitles: nil];
    [nocancel show];
    
    UIActivityIndicatorView *aiv = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    aiv.center = CGPointMake(nocancel.bounds.size.width / 2.0f, nocancel.bounds.size.height - 40.0f);
    [aiv startAnimating];
    [nocancel addSubview:aiv];
    [aiv release];
    aiv = nil;
        
    [self performSelector:@selector(performdismiss:) withObject:nocancel afterDelay:3.0f];
    
    [nocancel release];
    nocancel = nil;
    
}

//
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return TRUE;
}

- (UITextField *) textNormal
{
    if (textNormal == nil){
        CGRect position = CGRectMake(20.0f, 100.0f, 200.0f, 30.0f);
        textNormal = [[UITextField alloc] initWithFrame:position];
        
        textNormal.borderStyle = UITextBorderStyleBezel;
        textNormal.textColor = [UIColor redColor];
        textNormal.font = [UIFont systemFontOfSize:18.0];
        textNormal.placeholder = @"请输入";
        textNormal.backgroundColor = [UIColor blueColor];
        textNormal.autocorrectionType = UITextAutocorrectionTypeNo;
        textNormal.keyboardType = UIKeyboardAppearanceDefault;
        textNormal.returnKeyType = UIReturnKeyGo;
        textNormal.clearButtonMode = UITextFieldViewModeWhileEditing;
        textNormal.tag = 1.0f;
        textNormal.delegate = self;
    }
    return textNormal;
}

- (void)dealloc {
    [myTf release];
    [super dealloc];
}
@end
