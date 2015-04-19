//
//  FirstTableViewCell.h
//  0327Homework
//
//  Created by NEIL on 2015/4/6.
//  Copyright (c) 2015年 NEIL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstTableViewCell : UITableViewCell


@property(strong,nonatomic)IBOutlet UILabel *classNameLabel;
@property(strong,nonatomic)IBOutlet UILabel *dateLabel;
@property(strong,nonatomic)IBOutlet UILabel *classContentLabel;
@property(strong,nonatomic)IBOutlet UIButton *enterButton;
@property(strong,nonatomic)IBOutlet UIImageView *classImageView;
@property (strong,nonatomic) NSString *URLURLname;

@end
