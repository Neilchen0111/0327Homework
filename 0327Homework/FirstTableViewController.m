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
#import "ACWebViewController.h"


@interface FirstTableViewController ()

@property (strong,nonatomic) NSMutableArray *messageArray;
@property  (strong,nonatomic)NSIndexPath *selectedIndex;

@end

@implementation FirstTableViewController

-(void)awakeFromNib{
    _messageArray = [[NSMutableArray alloc]init];
}

- (void)viewDidLoad {
    
    [super viewDidLoad];

    
    [self prepareAPIcall];
    
    
   

    
    
    
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
    return _messageArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   FirstTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"firstcell" forIndexPath:indexPath];
    Feed *currentFeed = [_messageArray objectAtIndex:indexPath.row];
    
     [cell.enterButton addTarget:self action:@selector(checkButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    cell.URLURLname = currentFeed.enterURL;
    cell.classNameLabel.text = currentFeed.classname;
    cell.dateLabel.text = currentFeed.classdate;
    cell.classContentLabel.text = currentFeed.content;
    
    __block FirstTableViewCell *__cell = cell;
    cell.classImageView.image = nil;
    [currentFeed.avatarImage getDataInBackgroundWithBlock:^(NSData *data, NSError *error) {
        // Convert data into image.
        UIImage *avatar = [UIImage imageWithData:data];
        // Put image into image view.
        __cell.classImageView.image= avatar;
    }];
//    cell.classImageView.image= [UIImage imageNamed:currentFeed.classImage];


    


    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    _selectedIndex = indexPath;
}

#pragma private

-(void)prepareAPIcall{
    
    
    // Step 1.0 Prepare class to query
    PFQuery *query = [Feed query];
 
    // Step 2. Start api call
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        // Step 3. Return object
        if (!error) {
            
            // Remove all previous data.
            [_messageArray removeAllObjects];
            
            // Add all data into message array.
            [_messageArray addObjectsFromArray:objects];
            
            // Reload Table View.
            [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationAutomatic];
        }
    }
     ];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    
    if ([segue.identifier isEqualToString:@"toURLsegue"]) {
        
       
        NSDictionary *currentData = [_messageArray objectAtIndex:_selectedIndex];
    
        ACWebViewController *destViewController = segue.destinationViewController;
        destViewController.urlName = currentData;
    }
}

- (void)checkButtonTapped:(id)sender
{
    CGPoint buttonPosition = [sender convertPoint:CGPointZero toView:self.tableView];
    NSIndexPath *indexPath = [self.tableView indexPathForRowAtPoint:buttonPosition];
    if (indexPath != nil)
    {
        UIButton *button = (UIButton *)sender;
       int x = button.tag;
    }
}


@end
