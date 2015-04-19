//
//  ACWebViewController.h
//  0327Homework
//
//  Created by NEIL on 2015/4/18.
//  Copyright (c) 2015年 NEIL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ACWebViewController : UIViewController
@property (strong,nonatomic) NSDictionary *urlName;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
