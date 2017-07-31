//
//  ViewController.m
//  导航元素控制器的切换
//
//  Created by linSir on 7/31/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"
#import "VCRoot.h"


@interface ViewController ()

@end

@implementation ViewController


-  (void) startGame
{
    //循环创建自定义按钮
    for (int i = 0 ; i < 6 ; i ++){
        for(int j = 0 ; j< 6 ; j ++){
            
            UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
            
            //btn.frame = CGReactMake
            btn.frame = CGRectMake(10+50*j ,40+50*i ,50 ,50);
            UIImage* image = [UIImage imageNamed:@"2.png"];
            
            [btn setImage:image forState:UIControlStateNormal];
            
            [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
            
            [self.view addSubview:btn];
            
            
        }
    }
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
