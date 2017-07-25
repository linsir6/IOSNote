//
//  ViewController.m
//  学习警告对话框和等待提示器
//
//  Created by linSir on 7/25/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//实现属性和成员变量的同步
@synthesize alertView = _alertView;
@synthesize activityIndicatorView = _activityIndicator;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    for(int i = 0 ; i < 2 ; i ++){
        
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        btn.frame = CGRectMake(100, 100+100*i, 100, 40);
        
        if (i == 0) {
            [btn setTitle:@"警告对话框" forState:UIControlStateNormal];
        }else if(i == 1){
            [btn setTitle:@"等待指示器" forState:UIControlStateNormal];
        }
        btn.tag = 101 + i;
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:btn];
        
        
        
    }


}

- (void) pressBtn:(UIButton*) btn
{
    if (btn.tag == 101) {
        
        
        //nil 表示结束符
        
        _alertView = [[UIAlertView alloc] initWithTitle:@"警告"
                                         message:@"您的手机电量过低，即将关机，请保存好数据"
                                          delegate:self
                                          cancelButtonTitle:@"取消"
                                          otherButtonTitles:@"OK",@"11",@"22", nil];
        
        
        [_alertView show];
        
    }else if(btn.tag == 102){
        
        
        _activityIndicator = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake(100, 300, 80, 80)];
        
        
        
        _activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        
        [self.view addSubview:_activityIndicator];
        
        //启动动画并显示
        [_activityIndicator startAnimating];
        

        
        //[_activityIndicator stopAnimating];
        
        
        
        
        
    }
}




//当点击对话框的按钮时，调用此协议函数
//p1:对话框 对象 本身   p2:按钮的索引
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"index = %ld\n",buttonIndex);
}

//对话框即将消失，此函数被调用
- (void) alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex:(NSInteger)buttonIndex
{
    NSLog(@"即将消失");
}

- (void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"对话框已经消失");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end














