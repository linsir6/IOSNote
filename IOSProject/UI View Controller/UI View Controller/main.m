//
//  main.m
//  UI View Controller
//
//  Created by linSir on 7/24/17.
//  Copyright © 2017 58qifu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    
    
    // 自动内存释放池
    
    @autoreleasepool {
        
        //UIKit 框架的启动函数
        //参数一：argc，启动时担忧参数的个数
        //参数二：argv，参数列表
        //参数三：要求传入一个主框架类对象，如果参数为nil，系统会自动用默认的框架类做为主框架类名
        //参数四：主框架的代理类对象的名字
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
