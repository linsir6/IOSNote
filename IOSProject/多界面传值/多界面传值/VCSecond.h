//
//  VCSecond.h
//  多界面传值
//
//  Created by linSir on 8/1/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import <UIKit/UIKit.h>

//定义视图控制器二的协议
@protocol VCSecodeDelegate <NSObject>


//定义一个协议函数，改变背景颜色
- (void) changeColor:(UIColor*) color;

@end

@interface VCSecond : UIViewController

@property (assign,nonatomic) NSInteger tag;



//代理对象一定要实现代理协议
@property (assign,nonatomic) id<VCSecodeDelegate> delegate;


@end









