//
//  ViewController.m
//  UI Gesture扩展手势
//
//  Created by linSir on 7/28/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView* iView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2.jpg"]];
    
    iView.frame = CGRectMake(50, 50, 200, 300);
    iView.userInteractionEnabled = YES;
    
    UIPanGestureRecognizer* pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAct:)];
    
    [iView addGestureRecognizer:pan];
    
    [iView removeGestureRecognizer:pan];
    
    [self.view addSubview:iView];
    
    
    UISwipeGestureRecognizer* swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeAct)];
    
    //设定滑动手势接受事件的类型
    swipe.direction = UISwipeGestureRecognizerDirectionLeft |
        UISwipeGestureRecognizerDirectionRight |
        UISwipeGestureRecognizerDirectionUp |
        UISwipeGestureRecognizerDirectionDown;
    
    [iView addGestureRecognizer:swipe];
    
    
    UILongPressGestureRecognizer* longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(pressLong:)];
    
    [iView addGestureRecognizer:longPress];
    
    longPress.minimumPressDuration = 0.5;
    
    
}

- (void) pressLong:(UILongPressGestureRecognizer*) press
{
    //手势的状态对象，到达规定时间，三秒钟，触发函数
    if (press.state == UIGestureRecognizerStateBegan) {
        NSLog(@"状态开始");
    }
    //当手指离开屏幕时
    else{
        
        NSLog(@"结束状态");
        
    }
    
    
    
    NSLog(@"长按手势");
}





- (void) swipeAct:(UISwipeGestureRecognizer*) swipe
{
    NSLog(@"向左滑动");
}


- (void) panAct:(UIPanGestureRecognizer*) pan
{
    NSLog(@"pan!");
    CGPoint pt = [pan translationInView:self.view];
    
    
    
}















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
