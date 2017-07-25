//
//  ViewController.h
//  学习警告对话框和等待提示器
//
//  Created by linSir on 7/25/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>
{
    
    //定义一个警告对话框视图
    UIAlertView* _alertView;
    
    
    //等待提示对象
    //当下载，或加载比较大的文件时，可以显示此控件，处于提示等待状态
    UIActivityIndicatorView* _activityIndicator;
    

}


@property (retain,nonatomic) UIAlertView* alertView;
@property (retain,nonatomic) UIActivityIndicatorView* activityIndicatorView;




@end

