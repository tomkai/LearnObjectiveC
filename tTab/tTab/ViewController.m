//
//  ViewController.m
//  tTab
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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//定义行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 300;
}

//定义内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"row =%d",[indexPath row]);
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"aaaa"];
    if (cell == nil)
    {
        NSLog(@"new");
        cell = [[[UITableViewCell alloc] initWithStyle: UITableViewCellStyleSubtitle reuseIdentifier:@"aaaa"]autorelease];
        cell.accessoryType = UITableViewCellEditingStyleInsert;
//        NSString *str = [NSString stringWithFormat:@"row::%d",[indexPath row]];
//        cell.textLabel.text = str;
//        cell.detailTextLabel.text = @"详细信息";
    }
    NSString *str = [NSString stringWithFormat:@"row::%d",[indexPath row]];
    cell.textLabel.text = str;
    cell.detailTextLabel.text = @"详细信息";
    
    return cell;
}

@end
