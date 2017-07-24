//
//  ViewController.h
//  定时器对象
//
//  Created by linSir on 7/24/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义一个定时器对象
    //可以每隔固定的时间发送一个消息
    //通过此消息来调用相应的时间函数
    //通过此函数可在固定时间 间段来完成一个根据时间间隔的任务
    
    NSTimer* _timerView;
    
}

//定时器的属性对象
@property (retain,nonatomic) NSTimer* timerView;


@end

