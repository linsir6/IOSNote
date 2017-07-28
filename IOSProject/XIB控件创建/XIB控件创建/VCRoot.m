//
//  VCRoot.m
//  XIB控件创建
//
//  Created by linSir on 7/28/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)pressLogin:(UIButton *)sender {
    
    
    NSString* uName = @"lin";
    NSString* uPass = @"123456";
    
    if ([_mTFUserName.text isEqual:uName] && [_mTFPassword.text isEqual:uPass]) {
        
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户名密码正确，登录成功" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:@"取消", nil];
        
        [alert show];
        
    }else{
        
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户名密码正确，登录成功" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:@"取消", nil];
        [alert show];
        
    }
    
    
}

- (IBAction)pressRegister:(id)sender {
}
@end
