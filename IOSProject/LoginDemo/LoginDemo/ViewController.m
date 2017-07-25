//
//  ViewController.m
//  LoginDemo
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
    
    
    _lbUserName = [[UILabel alloc] init];
    _lbUserName.frame = CGRectMake(20, 60, 80, 40);
    _lbUserName.text = @"用户名：";
    _lbUserName.font = [UIFont systemFontOfSize:20];
    _lbUserName.textAlignment = NSTextAlignmentLeft;
    
    
    _lbPassword = [[UILabel alloc] init];
    _lbPassword.frame = CGRectMake(20, 140, 80, 40);
    _lbPassword.text = @"密码：";
    _lbPassword.font = [UIFont systemFontOfSize:20];
    _lbPassword.textAlignment = NSTextAlignmentLeft;
    
    
    _tfUserName = [[UITextField alloc] init];
    _tfUserName.frame = CGRectMake(120, 60, 180, 40);
    _tfUserName.placeholder = @"请输入用户名";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    
    _tfPassword = [[UITextField alloc] init];
    _tfPassword.frame = CGRectMake(120, 140, 180, 40);
    _tfPassword.placeholder = @"请输入密码";
    _tfPassword.borderStyle = UITextBorderStyleRoundedRect;
    _tfPassword.secureTextEntry = YES;
    
    
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(120, 250, 80, 40);
    [_btLogin setTitle:@"登录" forState:(UIControlStateNormal)];
    
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame = CGRectMake(120, 300, 80, 40);
    [_btRegister setTitle:@"注册" forState:(UIControlStateNormal)];
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    
    //将所有的控件添加到我们的视图中显示
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassword];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassword];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];
    
}


- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_tfUserName resignFirstResponder];
    [_tfPassword resignFirstResponder];
}






- (void) pressRegister
{
    
}


- (void) pressLogin
{
    
    NSString* strName = @"tom";
    NSString* strPass = @"123456";
    
    //获取输入框中的用户名文字
    NSString* strTextName = _tfUserName.text;
    NSString* strtextPass = _tfPassword.text;
    
    if ([strName isEqualToString:strName] && [strPass isEqualToString:strtextPass]) {
        NSLog(@"用户名密码正确");
        
        UIAlertView* alView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"验证成功，登录成功！" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil];
        
        [alView show];
    
    }else{
        
        UIAlertView* alView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"验证失败，登录失败！" delegate:nil cancelButtonTitle:@"确认" otherButtonTitles: nil];
        
        [alView show];
        
        
    }
    
    
    
    
    
}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
