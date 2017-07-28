//
//  ViewController.m
//  UI Gesture高级手势操作
//
//  Created by linSir on 7/27/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIImage* image = [UIImage imageNamed:@"2.jpg"];
    
    UIImageView* iView = [[UIImageView alloc] initWithImage:image];
    
    iView.frame = CGRectMake(50, 80, 200, 320);
    
    //开启交互功能
    iView.userInteractionEnabled = YES;
    
    [self.view addSubview:iView];
    
    
    //创建一个捏合手势
    _pinchGes = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchAt:)];
    
    
    [iView addGestureRecognizer:_pinchGes];
    
    
    //创建旋转手势
    _rotGes = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotAct:)];
    
    [iView addGestureRecognizer:_rotGes];
    
    
    _rotGes.delegate = self;
    _pinchGes.delegate = self;
    
}



- (BOOL) gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}


- (void) rotAct:(UIRotationGestureRecognizer*) rot
{
    UIImageView* iView = (UIImageView*)rot.view;
    
    
    iView.transform = CGAffineTransformRotate(iView.transform, rot.rotation);
    rot.rotation = 0;
    
    
}





- (void) pinchAt:(UIPinchGestureRecognizer*) pinch
{
    UIImageView* iView = (UIImageView*) pinch.view;
    
    //对图像视图对象进行矩阵变换并赋值
    //transform:表示图形学中的变换矩阵
    //CGAffineTransformScale:通过缩放的方式产生一个新矩阵
    //p1:原来的矩阵
    //p2:x 方向上的缩放比例
    //p3:y 方向上的缩放比例
    //返回值是新缩放后的矩阵变换
    
    iView.transform = CGAffineTransformScale(iView.transform, pinch.scale, pinch.scale);
    pinch.scale = 1;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end












