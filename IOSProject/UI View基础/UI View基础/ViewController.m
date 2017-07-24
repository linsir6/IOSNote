//
//  ViewController.m
//  UI View基础
//
//  Created by linSir on 7/24/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //显示所有在屏幕上的view的基础类
    //UIView 是一个矩形对象，由背景颜色，可以显示，有层级关系
    
    
    UIView* view = [[UIView alloc] init];
    view.frame = CGRectMake(100,100,100,200);
    view.backgroundColor = [UIColor blueColor];
    
    //将我们新创建的视图，添加到父视图上
    
    [self.view addSubview:view];
    
    
    
    view.hidden = NO;
    
    
    //alpha = 1; 不透明
    //alpha = 0.5; 半透明
    //alpha = 0; 透明
    
    
    self.view.backgroundColor = [UIColor blueColor];
    
    
    //设置是否显示 不透明
    view.opaque = NO;
    
    //将自己从父布局删除掉，将不会再显示在视图上面
    [view removeFromSuperview];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end












