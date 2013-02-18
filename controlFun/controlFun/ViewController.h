//
//  ViewController.h
//  controlFun
//
//  Created by gfyoyo on 12-10-28.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kSwitchesSegmentIndex 0

@interface ViewController : UIViewController<UIActionSheetDelegate,UIAlertViewDelegate>
{
//    UITextField *nameField;
//    UITextField *numberField;
}
@property (nonatomic, retain) IBOutlet UITextField *nameField;
@property (nonatomic, retain) IBOutlet UITextField *numberFild;
@property (nonatomic, retain) IBOutlet UILabel *sliderLabel;
@property (nonatomic, retain) IBOutlet UISwitch *leftSwitch;
@property (nonatomic, retain) IBOutlet UISwitch *rightSwitch;
@property (nonatomic, retain) IBOutlet UIButton *doSomethingButton;


- (IBAction)textFieldDoneEditing:(id)sender;
- (IBAction)backgroudTab:(id)sender;
- (IBAction)sliderChanged:(id)sender;
- (IBAction)toggleControls:(id)sender;
- (IBAction)switchChanged:(id)sender;
- (IBAction)buttonPressed;
- (IBAction)alertFlag:(id)sender;

@end
