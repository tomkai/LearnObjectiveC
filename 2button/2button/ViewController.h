//
//  ViewController.h
//  2button
//
//  Created by gfyoyo on 12-10-29.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIActionSheetDelegate>

@property (nonatomic, retain) IBOutlet UIButton *leftButton;
@property (nonatomic, retain) IBOutlet UIButton *rightButton;
@property (nonatomic, retain) IBOutlet UIActionSheet *leftSheet;
@property (nonatomic, retain) IBOutlet UIActionSheet *rightSheet;


- (IBAction)leftButtonPressed;
- (IBAction)rightButtonPressed;

@end
