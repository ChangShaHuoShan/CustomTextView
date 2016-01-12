//
//  ViewController.m
//  CustomTextView
//
//  Created by 袁灿 on 16/1/11.
//  Copyright © 2016年 yuancan. All rights reserved.
//

#import "ViewController.h"
#import "CustomTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CustomTextView *customTextView1 = [[CustomTextView alloc] initWithFrame:CGRectMake(10, 20, self.view.frame.size.width-20, 100)];
    customTextView1.placeholder = @"测试1";
    customTextView1.maxLength = 100;
    [self.view addSubview:customTextView1];
    
    CustomTextView *customTextView2 = [[CustomTextView alloc] initWithFrame:CGRectMake(10, 140, self.view.frame.size.width-20, 100)];
    customTextView2.placeholder = @"测试2";
    customTextView2.maxLength = 100;
    [self.view addSubview:customTextView2];
}

@end
