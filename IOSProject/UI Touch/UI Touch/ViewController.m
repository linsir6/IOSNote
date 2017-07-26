//
//  ViewController.m
//  UI Touch
//
//  Created by linSir on 7/26/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //加载一张图片在屏幕上
    
    UIImage* image = [UIImage imageNamed:@"17_1.png"];
    
    
    UIImageView* iView = [[UIImageView alloc] init];
    
    
    iView.image = image;
    iView.frame = CGRectMake(50, 100, 220, 300);
    [iView setTag:101];
    [self.view addSubview:iView];
    
}


- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    

    //获取当前手指在屏幕上的相对坐标
    //相对于当前视图的坐标
    
    
    
    
    //touchCount  记录当前点击的次数
//    if (touch.tapCount == 1) {
//        NSLog(@"单次点击");
//    }else if (touch.tapCount == 2){
//        NSLog(@"双次点击");
//    }
    
    
    NSLog(@"手指触摸的瞬间!");
}


- (void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"手指移动的瞬间");
    
    UITouch* touch = [touches anyObject];
    CGPoint pt = [touch locationInView:self.view];
    
    
    UIImageView* iView = (UIImageView*)[self.view viewWithTag:101];
    
    NSLog(@"x = %f , y = %f",pt.x,pt.y);
    
    iView.frame = CGRectMake(pt.x, pt.y, iView.frame.size.width, iView.frame.size.height);
    
}


- (void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"手指离开屏幕");
}


- (void) touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"当有中断事件发生的时候");
}









- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end













