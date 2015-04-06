//
//  FirstTableViewController.m
//  0327Homework
//
//  Created by NEIL on 2015/4/6.
//  Copyright (c) 2015年 NEIL. All rights reserved.
//

#import "FirstTableViewController.h"
#import "Feed.h"
#import "FirstTableViewCell.h"

@interface FirstTableViewController ()

@property (nonatomic, strong) NSMutableArray *classArray;

@end

@implementation FirstTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _classArray = [[NSMutableArray alloc]init];
    
    Feed *firstData = [[Feed alloc] init];
    firstData.className = @"App 開發神器";
    firstData.date = @"2015-0407 10:00am";
    firstData.classContent = @"如何藉由開發神器來幫助開發者進行開發，在這個課程當中我們可以學到相關項目，敬請期待。";
    firstData.classImage = @"Dog1";
    firstData.enter = @"了解更多";
    
    [_classArray addObject:firstData];
    
    
    Feed *secondData = [[Feed alloc] init];
    secondData.className = @"寵物App 開發";
    secondData.date = @"2015-0410 15:00am";
    secondData.classContent = @"了解寵物市場的內容，透過專業人士的指導，讓你開發寵物類app快速上手。";
    secondData.classImage = @"Dog2";
    secondData.enter = @"了解更多2";
    
    [_classArray addObject:secondData];
    
    
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return _classArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   FirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"firstcell" forIndexPath:indexPath];
    Feed *currentFeed = [_classArray objectAtIndex:indexPath.row];
    
    cell.classNameLabel.text = currentFeed.className;
    
    cell.dateLabel.text = currentFeed.date;
    cell.classContentLabel.text = currentFeed.classContent;
    cell.imageView.image= [UIImage imageNamed:currentFeed.classImage];
    cell.imageView.frame = CGRectMake(0, 0, 100, 100);
    cell.imageView.backgroundColor = [UIColor redColor];

     [cell.enterButton setTitle:currentFeed.enter forState:UIControlStateNormal];
    

    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
