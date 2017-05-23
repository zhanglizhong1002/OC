//
//  main.m
//  2.回顾get/set方法
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QFPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        

        QFPerson *xiaoqiang = [[QFPerson alloc] init];
        //[xiaoqiang setName:@"xiaoqiang"];  //set方法
        //[xiaoqiang setAge:20];   //set方法
        //点语法。
        //一定要注意，点语法，调的是方法，而不是调属性
        //1.点语法的展开，只能是带一个参数的set方法
        //2.点语法只能用于set或get方法，不能用在其他方法上
        xiaoqiang.name = @"xiaoqiang";  //set方法改为点语法，实际会展开成[xiaoqiang setName:@"xiaoqiang"];
        xiaoqiang.age  = 18;   //set方法改为点语法，实际会展开成[xiaoqiang setAge:@"xiaoqiang"];
        
        
        //总结：如果点语法，在赋值的左边，展开为set方法，不在左边为get方法
        //NSLog(@"name=%@,age=%ld",[xiaoqiang name],[xiaoqiang age]);
        NSLog(@"name=%@z%ld",xiaoqiang.name,xiaoqiang.age);   //展开成[xiaoqiang name],和[xiaoqiang age];调用的是get方法
    }
    return 0;
}
