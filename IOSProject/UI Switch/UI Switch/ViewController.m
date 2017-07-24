//
//  ViewController.m
//  UI Switch
//
//  Created by linSir on 7/24/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//同步属性和成员变量
@synthesize mySwitch = _mySwitch;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //创建一个开关对象
    //继承于UIView的
    _mySwitch = [[UISwitch alloc] init];
    
    //苹果官方控件的位置设置
    //位置X、Y的值可以改变
    //宽度和高度无法改变
    
    _mySwitch.frame = CGRectMake(100, 100, 80, 40);
    
    //开关状态设置属性
    //YES:开启状态
    //NO:关闭状态
    _mySwitch.on = YES;
    
    //这两种方法的含义是一样的
    [_mySwitch setOn:YES];
    
    //p1 状态设置    p2 是否开启动画的效果
    [_mySwitch setOn:YES animated:YES];
    
    [self.view addSubview:_mySwitch];
    
    //设置开启 状态的风格颜色
    [_mySwitch setOnTintColor:[UIColor redColor]];
    
    //设置开关圆按钮的风格颜色
    [_mySwitch setThumbTintColor:[UIColor greenColor]];
    
    
    //设置整体风格颜色
    [_mySwitch setTintColor:[UIColor purpleColor]];
    
    
    
    //向开关控件添加时间函数
    //p1:函数实现对象
    //p2:函数对象
    //p3:事件响应时的事件类型UIControlEventValueChanged:状态改变时触发函数
    
    [_mySwitch addTarget:self action:@selector(swChange:) forControlEvents:(UIControlEventValueChanged)];
    
    
    
    
    
    
    
}


//参数传入开关对象本身
- (void) swChange:(UISwitch*) sw
{
    
    if(sw.on == YES){
        NSLog(@"开关被打开");
    }else{
        NSLog(@"开关被关闭");
    }
    
    NSLog(@"开关状态发生变化");
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end




















