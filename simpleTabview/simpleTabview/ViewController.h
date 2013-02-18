//
//  ViewController.h
//  simpleTabview
//
//  Created by gfyoyo on 12-11-6.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *_listData;
//    UITableView *_tableView;
}

@property (nonatomic,retain) NSArray *listData;
//@property (nonatomic,retain) UITableView *tableView;

@end
