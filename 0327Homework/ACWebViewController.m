//
//  ACWebViewController.m
//  0327Homework
//
//  Created by NEIL on 2015/4/18.
//  Copyright (c) 2015年 NEIL. All rights reserved.
//

#import "ACWebViewController.h"

@interface ACWebViewController ()

@end

@implementation ACWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *page2TextField = self.urlName;
    
    
    NSURL *websiteUrl = [NSURL URLWithString:@"https://www.alphacamp.co/new-generation/"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:websiteUrl];
    [self.webView loadRequest:urlRequest];
    // Do any additional setup after loading the view.
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
