//
//  ViewController.m
//  01-tableView
//
//  Created by clm on 15/9/8.
//  Copyright (c) 2015年 clm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController
- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置数据源的代理方法
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}
#pragma - mark 数据源头的代理方
//  返回多少组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

// 返回每一组有多少的行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 3;
    } else{
        return 2;
    }
}

//
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            cell.textLabel.text = @"clm1";
        } else if (indexPath.row == 2)
        {
            cell.textLabel.text = @"clm2";
        } else
        {
            cell.textLabel.text = @"clm3";
        }
    } else{
        if (indexPath.row == 0) {
            cell.textLabel.text = @"lh1";
        } else
        {
            cell.textLabel.text = @"lh2";
        }
    }
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return @"first";
    } else
    {
        return @"second";
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if (section == 0) {
        return @"you are good";
    } else
    {
        return @"you are good too";
    }
}
    
@end




