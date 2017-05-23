//
//  main.m
//  3.单例的使用
//
//  Created by qianfeng on 15/9/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "File.h"

void fun()
{
    int i = 0;
    i++;
    NSLog(@"i=%d",i);
}

void staFun()
{
    static int i = 0;  //静态变量只初始化一次
    i++;
    NSLog(@"i=%d",i);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //静态变量的使用
        
#if 0
        fun();
        fun();
        staFun();
        staFun();
#endif
        
        //当没有使用单例时，每次实例化对象都会开辟一个空间
#if 0
        File *file1 = [[File alloc] init];
        NSLog(@"file1=%p",file1);
        File *file2 = [[File alloc] init];
        NSLog(@"file2=%p",file2);
        //使用单例后，对象只初始化一次，作用：效率提高
        //单例一般都是类方法,以default/share开头
#endif
        
        //单例实例调用：
        File * file3 = [File defaultManger];
        NSLog(@"file3=%p",file3);
        
        File * file4 = [File defaultManger];
        NSLog(@"file4=%p",file4);
        
    }
    return 0;
}
