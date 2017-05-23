//
//  Person.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@implementation Person

//默认为ARC模式，自动在程序执行结束时调用dealloc
//重写析构方法，模拟自动释放
- (void)dealloc    //析构函数
{
    NSLog(@"Person dealloc");
    //[super dealloc];   在ARC模式中，不能调用父类的析构
}

@end
