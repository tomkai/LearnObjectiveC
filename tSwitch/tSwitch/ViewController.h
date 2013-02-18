//
//  ViewController.h
//  tSwitch
//
//  Created by gfyoyo on 12-10-28.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel *labelText;
}


@property (nonatomic, retain) UISwitch *switchAdd;

- (IBAction)valueChanged:(id)sender;
- (IBAction)offSwitch:(id)sender;

@end
