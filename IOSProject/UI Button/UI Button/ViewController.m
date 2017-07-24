//
//  ViewController.m
//  UI Button
//
//  Created by linSir on 7/24/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)createUIRectButton
{
    //创建一个btn对象
    //通过类方法来创建buttonWithType:类名+方法名
    
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //设置button的位置
    btn.frame = CGRectMake(100, 100, 100, 40);
    
    //设置按钮的文字内容
    //p1:字符串类型
    //p2:设置文字显示的状态，正常状态
    
    
    [btn setTitle:@"按钮01" forState:UIControlStateNormal];
    
    [btn setTitle:@"按钮按下" forState:UIControlStateHighlighted];
    
    btn.backgroundColor = [UIColor grayColor];
    
    
    //设置颜色和状态
    [btn setTitleColor:[UIColor redColor] forState:(UIControlStateNormal)];
    
    //设置按下的状态和颜色
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    
    
    
    
    
    [btn setTintColor:[UIColor whiteColor]];

    btn.titleLabel.font = [UIFont systemFontOfSize:24];
    
    
    
    
    
    
    [self.view addSubview:btn];
    
}




- (void) createImageBtn
{
    
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    btnImage.frame = CGRectMake(100, 200, 100, 100);
    UIImage* icon01 = [UIImage imageNamed:@"btn01.png"];
    UIImage* icon02 = [UIImage imageNamed:@"btn02.png"];
    
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    [self.view addSubview:btnImage];
    
    
    
}












- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createUIRectButton];
    [self createImageBtn];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end







