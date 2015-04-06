//
//  MiddleViewController.m
//  0327Homework
//
//  Created by NEIL on 2015/3/28.
//  Copyright (c) 2015年 NEIL. All rights reserved.
//

#import "MiddleViewController.h"

@interface MiddleViewController ()

@end

@implementation MiddleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    stringArray = @[@"測試沙箱 Bootcamp1", @"Week 1：認識Alpha Camp", @"Week 2：認識創業"];

    
    // Do any additional setup after loading the view.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return stringArray.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        return 30.0;
    }
    else {
        return 44.0;
    }

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = @"CodeTableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
         if (indexPath.row == 0) {
             cell.backgroundColor =[UIColor grayColor];
             cell.textLabel.textColor = [UIColor blackColor];
             cell.textLabel.font =[UIFont boldSystemFontOfSize:15];
 
         }
         else {
        cell.backgroundColor =[UIColor clearColor];
        cell.textLabel.textColor = [UIColor grayColor];
        cell.textLabel.font =[UIFont boldSystemFontOfSize:15];
        cell.detailTextLabel.textColor = [UIColor lightGrayColor];
         }
        
    }     cell.textLabel.text = stringArray[indexPath.row];
    return cell;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
