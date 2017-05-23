//
//  main.m
//  5.retain的使用
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Person *xiaoming = [[Person alloc] init];
        NSLog(@"retainCount=%ld",[xiaoming retainCount]);   //1
        Person *xiaoqiang= [xiaoming retain];   //调用retain，使引用计数加1，也就是xiaoqiang对象也指向xiaoming开辟的空间
        NSLog(@"retainCount=%ld",[xiaoqiang retainCount]);   //2
        Person *xiaobai = [xiaoqiang retain];
        NSLog(@"retainCount=%ld",[xiaoqiang retainCount]);   //3
        [xiaoming release];
        NSLog(@"retainCount=%ld",[xiaoming retainCount]);   //2
        [xiaoqiang release];  //注意，内存管理黄金法则，谁开辟，谁释放，谁拥有对象，谁释放它
        //[xiaoming release];
        NSLog(@"retainCount=%ld",[xiaoming retainCount]);   //1
        [xiaobai release];         //0
        //NSLog(@"retainCount=%ld",[xiaoming retainCount]);   //err 野指针无法调用retainCount

    }
    return 0;
}
