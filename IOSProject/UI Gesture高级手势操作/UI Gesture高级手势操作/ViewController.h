//
//  ViewController.h
//  UI Gesture高级手势操作
//
//  Created by linSir on 7/27/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>
{
    //定义一个缩放手势，用来对视图进行放大缩小
    //pinch 捏合手势
    UIPinchGestureRecognizer* _pinchGes;
    
    //定义一个旋转手势
    UIRotationGestureRecognizer* _rotGes;
    
    
    
    
}









@end

