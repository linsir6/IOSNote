//
//  ViewController.m
//  Lin Porject
//
//  Created by linSir on 7/24/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建UI控件函数
- (void)createUI
{
    //定义并创建一个UILabel对象
    //UILable是可以显示在屏幕上，并且可以显示文字的一种UI视图
    UILabel* label = [[UILabel alloc] init];
    
    //显示文字的赋值
    label.text = @"你好，世界！";
    
    
    //设置label的显示位置
    label.frame = CGRectMake(100, 100, 160, 40);
    //设置背景色
    label.backgroundColor = [UIColor clearColor];
    //显示到屏幕上
    [self.view addSubview:label];
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"hello world");
    //设置背景色
    self.view.backgroundColor = [UIColor whiteColor];
    
    //调用创建UI函数
    [self createUI];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
