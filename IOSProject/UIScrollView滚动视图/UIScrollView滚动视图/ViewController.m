//
//  ViewController.m
//  UIScrollView滚动视图
//
//  Created by linSir on 7/25/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //定义并创建一个滚动视图
    //可以对视图内容进行滚屏查看功能
    UIScrollView* sv = [[UIScrollView alloc] init];
    
    //设置滚动视图的位置，使用
    sv.frame = CGRectMake(0, 0, 320, 576);
    
    
    //是否按照整页来滚动视图
    sv.pagingEnabled = YES;
    
    //是否可以开启滚动效果
    sv.scrollEnabled = YES;
    
    //设置画布的大小 画布显示在滚动视图的内部，一般大于Frame的大小
    sv.contentSize = CGSizeMake(320*5, 576);
    
    //是否可以有边缘弹动效果
    sv.bounces = YES;
    
    //开启横向弹动效果
    sv.alwaysBounceHorizontal = YES;
    
    //开启纵向弹动效果
    sv.alwaysBounceVertical = YES;
    
    //显示横向滚动条
    sv.showsHorizontalScrollIndicator = YES;
    
    //显示纵向滚动条
    sv.showsVerticalScrollIndicator = YES;
    
    //sv.backgroundColor = [UIColor yellowColor];
    
    for(int i = 0 ; i < 5 ; i++){
        NSString* strName = [NSString stringWithFormat:@"%d.jpg",i+1];
        UIImage* image = [UIImage imageNamed:strName];
        
        UIImageView* iView = [[UIImageView alloc] initWithImage:image];
        iView.frame = CGRectMake(320*i, 0, 320, 576);
        
        [sv addSubview:iView];
    }
    
    
    
    
    
    
    [self.view addSubview:sv];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}











@end





















