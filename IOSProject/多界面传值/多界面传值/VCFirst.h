//
//  VCFirst.h
//  多界面传值
//
//  Created by linSir on 8/1/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VCSecond.h"


@interface VCFirst : UIViewController<VCSecodeDelegate>


- (void) changeColor:(UIColor *)color;

@end
