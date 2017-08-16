//
//  VCFirst.m
//  多界面传值
//
//  Created by linSir on 8/1/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import "VCFirst.h"
#import "VCSecond.h"


@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) changeColor:(UIColor *)color
{
    self.view.backgroundColor = color;
}


- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    VCSecond* vc = [[VCSecond alloc] init];
    
    //vc.delegate = self;
    
    vc.view.backgroundColor = [UIColor orangeColor];
    
    [self.navigationController pushViewController:vc animated:YES];
    
    
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
