//
//  ViewController.h
//  UI Slider Progress
//
//  Created by linSir on 7/24/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    //进度条对象
    //一般用来表示下载或者视频播放进度
    UIProgressView* _progressView;
    
    
    //滑动条定义
    //一般用来调整视频，音频音乐的音量
    
    UISlider* _slider;
    
}

@property (retain,nonatomic) UIProgressView* pView;

@property (retain,nonatomic) UISlider* slider;


@end

