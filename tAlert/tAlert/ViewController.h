//
//  ViewController.h
//  tAlert
//
//  Created by gfyoyo on 12-10-28.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate,UITextFieldDelegate>
{
    IBOutlet UITextField *myTf;
}

@property (nonatomic,retain) UITextField *textNormal;


- (IBAction)showAlert:(id)sender;

- (IBAction)nocancelAlert:(id)sender;
@end
