//
//  ViewController.m
//  UI ScrollView 高级用法
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
    
    //初始化滚动视图
    _scrollView = [[UIScrollView alloc] init];
    
    //设置滚动视图的位置
    _scrollView.frame = CGRectMake(10, 50, 300, 400);
    
    //取消弹动效果
    _scrollView.bounces = NO;
    
    
    //是否允许通过点击屏幕让滚动视图响应事件
    //yes：滚动视图可以接受触碰事件
    //_scrollView.userInteractionEnabled = NO;
    
    _scrollView.contentSize = CGSizeMake(300, 400*9);
    
    for(int i = 0 ; i < 9 ; i++){
        
        NSString* strName = [NSString stringWithFormat:@"17_%d.png",i+1];
        UIImage* image = [UIImage imageNamed:strName];
        
        UIImageView* iView = [[UIImageView alloc] init];
        
        iView.image = image;
        
        iView.frame = CGRectMake(0, 400*i, 300, 400);
        
        [_scrollView addSubview:iView];
        
        
    }
    
    [self.view addSubview:_scrollView];
    
    _scrollView.pagingEnabled = NO;
    
    //滚动视图画布的移动位置，偏移位置
    _scrollView.contentOffset = CGPointMake(0, 0);
    
    
    //将当前视图控制器作为代理对象
    _scrollView.delegate = self;
}


//当滚动制图移动时，offset发生变化，就会调用此函数

- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"y = %f",scrollView.contentOffset.y);
}



- (void) scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    NSLog(@"Did End Drag!");
}



//视图即将减速时调用
- (void) scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@"Will Begin Drag!");
}


- (void) scrollViewWillBeginDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"Will Begin Decelerating");
}


- (void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"视图已经结束减速时调用，视图停止的瞬间");
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    //_scrollView.contentOffset = CGPointMake(0, 0);
    
    
    [_scrollView scrollRectToVisible:CGRectMake(0, 0, 300, 400) animated:YES];
    
}



@end






















