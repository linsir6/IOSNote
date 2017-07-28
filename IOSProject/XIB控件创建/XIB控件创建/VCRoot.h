//
//  VCRoot.h
//  XIB控件创建
//
//  Created by linSir on 7/28/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRoot : UIViewController

//使用XIB创建UILabel属性

@property (weak, nonatomic) IBOutlet UILabel *mUserName;
@property (weak, nonatomic) IBOutlet UILabel *mUserPassword;
@property (weak, nonatomic) IBOutlet UITextField *mTFUserName;
@property (weak, nonatomic) IBOutlet UITextField *mTFPassword;
@property (weak, nonatomic) IBOutlet UIButton *mBTLogin;
@property (weak, nonatomic) IBOutlet UIButton *mBTRegister;


//按钮事件函数
- (IBAction)pressLogin:(UIButton *)sender;


- (IBAction)pressRegister:(id)sender;










@end
