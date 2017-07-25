//
//  ViewController.h
//  步进器和分栏控件
//
//  Created by linSir on 7/25/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义步进器对象
    //按照一定的数值 来调整某个数据
    UIStepper* _steppter;
    
    
    //定义分栏控制器
    UISegmentedControl* _segControl;
    
}


@property (retain,nonatomic) UIStepper* stepper;
@property (retain,nonatomic) UISegmentedControl* segControl;





@end

