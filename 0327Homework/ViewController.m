//
//  ViewController.m
//  0327Homework
//
//  Created by NEIL on 2015/3/28.
//  Copyright (c) 2015年 NEIL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    stringArray1 = @[@"測試沙箱 Bootcamp1", @"測試沙箱 Bootcamp2", @"測試沙箱 Bootcamp3"];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return stringArray1.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
        return 100.0;
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = @"CodeTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        
        
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
            cell.backgroundColor =[UIColor grayColor];
            cell.textLabel.textColor = [UIColor blackColor];
            cell.textLabel.font =[UIFont boldSystemFontOfSize:15];

        
    }     cell.textLabel.text = stringArray1[indexPath.row];
    return cell;
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
