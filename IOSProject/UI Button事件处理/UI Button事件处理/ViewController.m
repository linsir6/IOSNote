//
//  ViewController.m
//  UI Button事件处理
//
//  Created by linSir on 7/24/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void) createBtn
{
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [btn addTarget:self action:@selector(touchBtn) forControlEvents:UIControlEventTouchDown];
    
    
    
    //多个按钮使用同一个事件函数，来处理不同按钮的事件
    
    [self.view addSubview:btn];
    
    btn.tag = 101;
    //btn02.tag = 102;
    
}

-(void) touchBtn
{
    
    NSLog(@"---lin---> linSir");
}


-(void) pressBtn:(UIButton*) btn
{
    if (btn.tag == 102) {
        NSLog(@"---lin---> lin");
    }
    
}










- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createBtn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
