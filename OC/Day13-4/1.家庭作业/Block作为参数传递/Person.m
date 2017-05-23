//
//  Person.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@implementation Person

//相当于void (^block)(NSString*) = ^(NSString* name){};
//形参中声明block变量
-(void)say:(void (^)(NSString *name))block
{
    //block(name);  //err name只是代表声明block时带参数
    
    block(_name);   //block回调   //2
//    block(_name);
}    //4


@end
