//
//  ViewController.m
//  定时器对象
//
//  Created by linSir on 7/24/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController


//属性和成员变量的同步
@synthesize timerView = _timerView;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //启动定时器按钮
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    [btn setTitle:@"启动定时器" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    //停止定时器按钮
    
    
    UIButton* btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnStop.frame = CGRectMake(100, 200, 80, 40);
    
    [btnStop setTitle:@"停止定时器" forState:UIControlStateNormal];
    
    [btnStop addTarget:self action:@selector(pressStop) forControlEvents:(UIControlEventTouchUpInside)];
    
    [self.view addSubview:btnStop];
    
    
    UIView* view  = [[UIView alloc] init];
    view.frame = CGRectMake(0, 0, 80, 80);
    view.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:view];
    
    
    //设置view的标签值
    //通过父视图对象以及view的标签值可以获取相应的视图对象
    view.tag = 101;
    
    
    
}

//按下开始按钮
- (void) pressStart
{
    //创建一个定时器，并且启动这个定时器
    //P1:每隔多长时间，触发一次等时期，以秒为单位的整数
    //P2:表示实现定时器函数的对象(指针)
    //P3:定时器函数对象
    //P4:可以传入定时器函数中一个参数，作为一个辅助变量，无参可以传空
    //P5:定时器是否重复操作，YES为重复，NO为只调用一次
    //返回值为一个新建好的定时器的对象
    _timerView = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTimer:) userInfo:@"小明" repeats:YES];
    
    
    
}

//按下停止按钮
- (void) pressStop
{
    [_timerView invalidate];
}

//可以将定时器本身做为参数传入
- (void) updateTimer:(NSTimer*) timer
{
    NSLog(@"定时器开始咯～  name=%@",timer.userInfo);
    
    //最好tag从100开始
    UIView* view = [self.view viewWithTag:101];
    view.frame = CGRectMake(view.frame.origin.x+5, view.frame.origin.y +5 , 80, 80);
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
