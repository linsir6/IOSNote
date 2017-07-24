//
//  ViewController.h
//  UI Switch
//
//  Created by linSir on 7/24/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义一个开关控件
    //可以进行状态的改变
    //开、关，两种状态的改变
    //所有UIKit框架库中的控件均以UI开头
    //苹果官方控件都定义在UIkit框架库中
    UISwitch* _mySwitch;
}


@property (retain,nonatomic) UISwitch* mySwitch;

@end

