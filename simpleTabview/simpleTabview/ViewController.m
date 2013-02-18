//
//  ViewController.m
//  simpleTabview
//
//  Created by gfyoyo on 12-11-6.
//  Copyright (c) 2012年 kevin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize listData = _listData;
//@synthesize tableView = _tableView;

- (void)viewDidLoad
{
//    _tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
//
//    _tableView.delegate = self;
//    _tableView.dataSource = self;
//    
//    [self.view addSubview:_tableView];
    
    NSArray *array = [[NSArray alloc] initWithObjects:@"Sleepy",@"Sneezy",@"Bashful",@"Happy",@"Doc",@"Grumpy",@"Dopey",@"Thorin",@"Dorin",@"Nori",@"Balin",@"Dwalin",@"Fili",@"Kili",@"Oin",@"Gloin",@"Bifur",@"Bofur",@"Bombur", nil];
    NSLog(@"%d,%d",[array retainCount],[_listData retainCount]);
//    _listData = array;
    self.listData = array;
    NSLog(@"%d,%d",[array retainCount],[_listData retainCount]);
    [array release];
    NSLog(@"%d,%d",[array retainCount],[_listData retainCount]);
    [super viewDidLoad];
     
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_listData release];
//    [_tableView release];
    [super dealloc];
}

#pragma mark -
#pragma mark Tabel view data source methods
// tableview的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_listData count];
}

// 分配tableview中的内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"kevin";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier] autorelease];
    }
    
    // 设置cell图片以用户高亮图片
    UIImage *image = [UIImage imageNamed:@"sun.png"];
    UIImage *imageHighlight = [UIImage imageNamed:@"moon.png"];
    cell.imageView.image = image;
    cell.imageView.highlightedImage = imageHighlight;
//    [image release];
//    [imageHighlight release];
    
    NSUInteger row = [indexPath row];
    cell.textLabel.text = [_listData objectAtIndex:row];
    
    
    // 设置单元格详细内容
    if (row < 7) {
        cell.detailTextLabel.text = @"Mr.Disney";
    }
    else
    {
        cell.detailTextLabel.text = @"Mr.Tolkien";
    }
    
    return cell;
    [simpleTableIdentifier release];

}

#pragma mark -
#pragma mark Table Delegate Methods
// 设置缩进级别
- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row  = [indexPath row];
    return row;
}

//
//- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSUInteger row = [indexPath row];
//    if (row == 0) {
//        return nil;
//    }
//    return indexPath;
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSUInteger row = [indexPath row];
    NSString *rowValue = [_listData objectAtIndex:row];
    
    NSString *message = [[NSString alloc] initWithFormat:@"You select %@",rowValue];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Row Selected!" message:message delegate:nil cancelButtonTitle:@"Yes,i did" otherButtonTitles:nil];
    
    [alert show];
    
    [message release];
    [alert release];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
  
}



@end
