//
//  ViewController.m
//  步进器和分栏控件
//
//  Created by linSir on 7/25/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


@synthesize stepper = _steppter;
@synthesize segControl = _segControl;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //创建步进器对象
    _steppter = [[UIStepper alloc] init];

    //设置位置，告诉不能变更
    _steppter.frame = CGRectMake(100, 100, 80, 40);
    
    //min
    _steppter.minimumValue = 0;
    //max
    _steppter.maximumValue = 100;
    //now
    _steppter.value = 10;
    //step value 每次向后的步伐值
    _steppter.stepValue = 1;
    //是否可以重复响应
    _steppter.autorepeat = YES;
    
    //是否将步进结果通过事件函数响应出来
    _steppter.continuous = YES;
    

    
    
    [_steppter addTarget:self action:@selector(stepChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_steppter];
    
    
    _segControl = [[UISegmentedControl alloc] init];
    
    //创建分栏控件,宽度可变，高度不可变
    _segControl.frame = CGRectMake(10, 200, 300, 40);
    
    //添加一个按钮元素
    [_segControl insertSegmentWithTitle:@"0元" atIndex:0 animated:NO];
    
    
    //参数一：按钮选项文字
    //p2: 按钮的索引位置
    //p3: 是否有插入动画效果
    [_segControl insertSegmentWithTitle:@"5元" atIndex:1 animated:NO];
    [_segControl insertSegmentWithTitle:@"10元" atIndex:2 animated:NO];
    
    
    _segControl.selectedSegmentIndex = 0;
    
    [_segControl addTarget:self action:@selector(setChange) forControlEvents:UIControlEventValueChanged];
    
    
    [self.view addSubview:_segControl];
    
}


- (void) setChange
{
    NSLog(@"结果是%ld",_segControl.selectedSegmentIndex);
}



- (void) stepChange
{
    NSLog(@"step press ! value = %f",_steppter.value);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end














