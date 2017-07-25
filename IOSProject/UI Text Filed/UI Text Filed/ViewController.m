//
//  ViewController.m
//  UI Text Filed
//
//  Created by linSir on 7/25/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



@synthesize textField = _textField;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个文本输入区对象
    self.textField = [[UITextField alloc] init];
    
    //文本输入区位置和大小
    self.textField.frame = CGRectMake(100, 100, 180, 40);
    
    
    self.textField.font = [UIFont systemFontOfSize:15];
    
    self.textField.textColor = [UIColor blackColor];
    
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    //设置键盘风格
    self.textField.keyboardType = UIKeyboardTypeDefault;
    
    self.textField.placeholder = @"请输入用户名";
    
    [self.view addSubview: self.textField];
    
}



- (void) textFiledDidBeginEditing:(UITextField *)textField
{
    NSLog(@"开始编辑");
}

- (void) textFieldDidEndEditing:(UITextField *) textField
{
    NSLog(@"编辑输入结束");
}







- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //虚拟键盘回收，不再作为第一消息响应者
    [self.textField resignFirstResponder];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
