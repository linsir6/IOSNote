//
//  ViewController.m
//  UI Slider Progress
//
//  Created by linSir on 7/24/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


@synthesize slider = _slider;
@synthesize pView = _progressView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //进度条的创建
    _progressView = [[UIProgressView alloc] init];
    
    
    //进度条的位置大小设置
    //进度条的高度是不可以变化的
    _progressView.frame = CGRectMake(50, 100, 200, 40);

    
    //设置进度条的风格颜色值
    _progressView.progressTintColor = [UIColor redColor];
    
    //设置进度条的进度值
    //范围0-1
    _progressView.progress = 0.5;
    
    //设置进度条的风格 特征
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    
    [self.view addSubview:_progressView];
    
    
    
    //创建滑动条
    _slider = [[UISlider alloc] init];
    
    
    _slider.frame = CGRectMake(10, 200, 300, 40);
    
    _slider.maximumValue = 1;
    
    //最小值可以为负值
    _slider.minimumValue = 0;
    
    //设置滑动条的滑块位置
    _slider.value = 30;
    //滑块左侧颜色
    _slider.minimumTrackTintColor = [UIColor blueColor];
    //滑块右侧颜色
    _slider.maximumTrackTintColor = [UIColor greenColor];
    
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:(UIControlEventValueChanged)];
    
    [self.view addSubview:_slider];
    
}


- (void) pressSlider
{
    NSLog(@"value = %f" , _slider.value);
    
    
    _progressView.progress = _slider.value;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end











