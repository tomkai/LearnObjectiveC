//
//  FisrtView.m
//  mastView
//
//  Created by gfyoyo on 12-11-11.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "FisrtView.h"
#import "SecondView.h"

@interface FisrtView ()

@end

@implementation FisrtView

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
    UIImage *image = [UIImage imageNamed:@"sun.png"];
    UIImageView *iv = [[UIImageView alloc]initWithImage:image];
//    iv.image = image;
    self.navigationItem.titleView = iv;
    [image release];
    [iv release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goto:(id)sender {
    SecondView *svc = [[SecondView alloc] init];
    [self.navigationController pushViewController:svc animated:YES];
    [svc release];
}
@end
