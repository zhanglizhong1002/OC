//
//  main.m
//  ARC的使用
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *per = [[Person alloc] init];
        NSLog(@"开辟空间");
    } //离开@autoreleasepool，会去自动调用dealloc析构方法，系统自动释放，没有release
    NSLog(@"程序即将结束");
    return 0;
}
