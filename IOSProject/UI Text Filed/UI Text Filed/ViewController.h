//
//  ViewController.h
//  UI Text Filed
//
//  Created by linSir on 7/25/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextViewDelegate>
{
    
    /**
     * 定义一个textField 文本输入区域，只能单行
     */
    UITextField* _textField;
    
    
}

@property (retain,nonatomic) UITextField* textField;






@end

