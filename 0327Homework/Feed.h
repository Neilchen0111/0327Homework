//
//  Feed.h
//  0327Homework
//
//  Created by NEIL on 2015/4/6.
//  Copyright (c) 2015年 NEIL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Parse/Parse.h>


@interface Feed : PFObject<PFSubclassing>

@property(strong,nonatomic)NSString *classname;
@property(strong,nonatomic)NSString *classdate;
@property(strong,nonatomic)NSString *content;
@property(strong,nonatomic)NSString *enterURL;
@property(strong,nonatomic)PFFile *avatarImage;


@end
