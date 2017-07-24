//
//  ViewController.m
//  UI View Controller的使用
//
//  Created by linSir on 7/24/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"
#import "ViewC02.h"

@interface ViewController ()

@end

@implementation ViewController


//屏幕点击时被调用
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //创建视图控制器二
    ViewC02* vc = [[ViewC02 alloc] init];
    
    
    //显示一个新的视图控制器到屏幕上
    //p1:新的视图控制器对象
    //p2:使用动画切换效果
    //p3:切换结束后功能调用，不需要穿nil值即可
    [self presentViewController:vc animated:YES completion:nil];
}




//第一次程序加载视图时被调用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor blueColor];
    NSLog(@"第一次加载时被调用～");
}


//当视图控制器的视图即将显示，调用此函数
//视图分为：1.显示前 2:正在处于显示状态 3:已经被隐藏
//参数：表示是否有动画切换效果显示
- (void) viewWillAppear:(BOOL)animated
{
    NSLog(@"viewWillAppear,视图即将显示！");
}


//视图即将消失，调用此函数
//当前状态：视图还是在屏幕上面的
- (void) viewWillDisappear:(BOOL)animated
{
    NSLog(@"视图即将消失");
}


//当前状态已经显示到屏幕上了
- (void) viewDidAppear:(BOOL)animated
{
    NSLog(@"视图已经显示");
}



//当前视图控制器已经消失了从屏幕上
- (void) viewDidDisAppear:(BOOL)animated
{
    NSLog(@"视图已经消失");
}














//内存过低警告接收函数
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
