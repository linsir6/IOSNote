//
//  ViewController.m
//  UI View的层级关系
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
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    UIView* view01 = [[UIView alloc] init];
    view01.frame = CGRectMake(100, 100, 150, 150);
    view01.backgroundColor = [UIColor blueColor];

    UIView* view02 = [[UIView alloc] init];
    view02.frame = CGRectMake(125, 125, 150, 150);
    view02.backgroundColor = [UIColor orangeColor];
    
    UIView* view03 = [[UIView alloc] init];
    view03.frame = CGRectMake(150, 150, 150, 150);
    view03.backgroundColor = [UIColor greenColor];
    
    //将三个视图对象显示到屏幕
    //并且添加到父视图，这里面决定了添加的顺序，在靠上的先被添加
    [self.view addSubview:view01];
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    
    
    //将某一个视图调整到前方，参数是要调整哪一个参数到前方，一个view
    [self.view bringSubviewToFront:view01];
    
    
    //调整一个视图到最后防线是，参数是一个view
    [self.view sendSubviewToBack:view01];
    
    
    //subViews 管理所有self.view 的子视图的数组
    //这样就能获取到添加进去的第几个元素
    UIView* viewFront = self.view.subviews[2];
    UIView* viewBack = self.view.subviews[0];
    
    if(viewBack == view01){
        NSLog(@"相等");
    }
    
    //view.superview;   父视图
    //view.subviews;    子视图
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
