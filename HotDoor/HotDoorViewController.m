//
//  HotDoorViewController.m
//  HotDoor
//
//  Created by _ MarS. on 14-3-4.
//  Copyright (c) 2014年 王柏慧. All rights reserved.
//

#import "HotDoorViewController.h"
#import "HotDoorCell.h"
@interface HotDoorViewController ()

@end

@implementation HotDoorViewController
- (void)dealloc
{
    [_imageArray release];
    [super dealloc];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        _imageArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UITableView * hotDoorTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, 320, 460) style:UITableViewStylePlain];
    hotDoorTableView.delegate = self;
    hotDoorTableView.dataSource = self;
    [self.view addSubview:hotDoorTableView];
    [hotDoorTableView release];

}

//设置行高（分别设置）
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 150;
}
#pragma mark -
#pragma mark tableView 必须实现协议
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
//    return [_imageArray count];
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellIdentify = @"Acell";
    
    HotDoorCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
    
    if (!cell) {
        cell = [[[HotDoorCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentify] autorelease];
    }
    cell.button.titleLabel.text = @"11";
    cell.titleLabel.text = @"超级玛丽之超级玛丽";
    cell.dateLabel.text = @"2014.03.03";
    [cell.peopleButton setImage:[UIImage imageNamed:@"123.png"] forState:UIControlStateNormal];
    
    return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
