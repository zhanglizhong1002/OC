//
//  main.m
//  4.MRC模式的简单使用
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        //ARC与MRC的区别：ARC自动引用计数，不用我们管理内存；
        //MRC:手动引用计数，需要手动去释放，根据内存管理黄金法则去管理内存；看到有alloc、copy、retain,那么一定要有release或autorelease
        Person *per = [[Person alloc] init];
        NSLog(@"retainCount = %ld",[per retainCount]);  //retainCount,打印内存的引用计数
        NSLog(@"开辟内存");
        [per release];  //如果不进行release，那么引用计数永远为1，不会调用dealloc；记住release为引用计数减1，当引用计数减到0时才会调用dealloc释放
    }
    NSLog(@"程序即将退出");
    return 0;
}
