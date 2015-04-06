//
//  ThirdViewController.m
//  0327Homework
//
//  Created by NEIL on 2015/3/28.
//  Copyright (c) 2015年 NEIL. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@property (weak, nonatomic) IBOutlet UIButton *MenberEnter;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *backgroundImage = [UIImage imageNamed:@"Logo"];
    UIImageView *resizableBackground = [[UIImageView alloc]initWithImage:backgroundImage];
    self.navigationItem.titleView = resizableBackground;
    self.MenberEnter.layer.cornerRadius =5.0;
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
