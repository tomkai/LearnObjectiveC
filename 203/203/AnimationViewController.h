//
//  AnimationViewController.h
//  203
//
//  Created by gfyoyo on 12-11-25.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimationViewController : UIViewController{
    UIImageView *blueView;
    UIImageView *greenView;
    
    NSInteger typeID;
}
@property (nonatomic, retain) IBOutlet UIImageView *blueView;
@property (nonatomic, retain) IBOutlet UIImageView *greenView;

@property (nonatomic, assign) NSInteger typeID;

- (IBAction)buttonPressed:(id)sender;

@end
