//
//  VCRoot.m
//  导航控制器基础
//
//  Created by linSir on 7/31/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    self.view.backgroundColor = [UIColor yellowColor];
    
    self.title = @"根视图";
    
    //设置导航元素项的标题
    self.navigationItem.title = @"Title";
    
    
    
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"左侧" style:UIBarButtonItemStyleDone target:self action:@selector(pressLeft)];
    
    self.navigationItem.leftBarButtonItem = leftBtn;

}

- (void) pressLeft
{
    NSLog(@"按钮被按下");
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

@end
