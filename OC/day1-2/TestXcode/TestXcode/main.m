//
//  main.m
//  TestXcode
//
//  Created by qianfeng on 15-9-21.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

//包括头文件;

//#include
// #import 比include更好， 防止重复包含头文件；

//typedef 旧名字 新名字;
typedef int MYINT;

//#define 宏名 常用的代码
//宏名 == 常用的代码


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");// oc输出
        printf("Hello World!\n");
        
        // OC字符串： @“”；
        // C字符串:   ""
//       NSLog             printf
//a、输出时间，工程名         不输出
//b、自动换行                不会自动换行
//c、预期输出OC字符串，       C字符串；
//d、可以输出oc字符串，       不可以输出oc字符串;
        
        
        NSLog(@"%lu\n", sizeof(char));
        NSLog(@"%lu\n", sizeof(int));
        
        NSLog(@"%lu\n", sizeof(BOOL)); // char
        BOOL ret = NO;
        NSLog(@"%d, %d", YES, NO);
        NSInteger a = 100;
        MYINT b = 100; // int b = 100;
        NSLog(@"%d", b);
        NSLog(@"%lu", sizeof(NSInteger));  // long
        //NSInteger 在64位系统是long， 在32系统里面是 int
//        CGFloat
        
        int i = 1;
        while (i <= 10) {
            NSLog(@"%d", i);
            i++;
        }
    }
    return 0;
}

















