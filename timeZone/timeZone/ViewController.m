//
//  ViewController.m
//  timeZone
//
//  Created by gfyoyo on 12-11-4.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    tRow = [NSArray arrayWithObjects:@"12",@"9",@"4",@"10",nil];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//定义分组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

//定义每组的个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return (int)([tRow objectAtIndex:section]);
//    return 8;
}

//定义每个组的header
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"header %d",section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"aa"];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"aa"]autorelease];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"row::%d",[indexPath row]];
    return cell;

}

@end
