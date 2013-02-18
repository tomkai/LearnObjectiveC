//
//  ViewController.h
//  buttonFun
//
//  Created by gfyoyo on 12-10-28.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
//    UILabel *statusText;
}

@property (nonatomic, retain) IBOutlet UILabel *statusText;

- (IBAction)buttonPressed:(id)sender;

@end
