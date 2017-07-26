//
//  ViewController.m
//  UI Gesture 基础
//
//  Created by linSir on 7/26/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIImage* image = [UIImage imageNamed:@"17_1.png"];
    
    _imageView = [[UIImageView alloc] init];
    
    _imageView.image = image;
    
    _imageView.frame = CGRectMake(50, 80, 200, 300);
    
    [self.view addSubview:_imageView];
    
    //开启交互响应事件
    _imageView.userInteractionEnabled = YES;
    
    //识别点击手势的控件
    UITapGestureRecognizer* tapOneGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOneAct:)];
    
    //手势识别事件的类型:几次点击时间时触发
    tapOneGes.numberOfTapsRequired = 1;
    
    
    tapOneGes.numberOfTouchesRequired = 1;
    
    
    
    [_imageView addGestureRecognizer:tapOneGes];
    
    
    UITapGestureRecognizer* tapTwo = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapTwo:)];
    
    tapTwo.numberOfTapsRequired = 1;
    
    tapTwo.numberOfTapsRequired = 2;
    
    [_imageView addGestureRecognizer:tapTwo];
}


- (void) tapTwo:(UITapGestureRecognizer* ) tap
{
    NSLog(@"双次点击！");
    
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:1];
    
    _imageView.frame = CGRectMake(50, 80, 200, 300);
    
    [UIView commitAnimations];
    
}


- (void) tapOneAct:(UITapGestureRecognizer*) tap
{
    UIImageView* imageView = (UIImageView*) tap.view;

    //开始动画
    [UIView beginAnimations:nil context:nil];
    
    [UIView setAnimationDuration:2];
    
    
    imageView.frame = CGRectMake(0, 0, 320, 568);
    
    
    [UIView commitAnimations];
    NSLog(@"单击操作！");
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end












