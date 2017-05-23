//
//  main.m
//  4.重写练习
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YongStudent.h"
#import "OldStudent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        YongStudent *xiaoming = [[YongStudent alloc] init];
        xiaoming.name = @"xiaoming";
        xiaoming.age  = 8;
        
        OldStudent *laoming = [[OldStudent alloc] init];
        laoming.name = @"laoming";
        laoming.age = 18;
        NSLog(@"%@ %ld", xiaoming.name, xiaoming.age);
        [xiaoming course];  //重写方法的调用
        [xiaoming write];   //重写方法的调用
        [laoming course];   //重写方法的调用
        [laoming write];   //重写方法的调用

        
    }
    return 0;
}
