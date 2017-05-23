//
//  main.m
//  7.SEL容器的使用
//
//  Created by qianfeng on 15/9/25.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QFDog.h"

void fun()
{
    NSLog(@"fun被调用");
}

void fun1()
{
    NSLog(@"fun1被调用");
}

//函数指针作为参数形式，也要与通过函数指针调用的函数，返回值和类型要一致
//void (*p)() = fun;  //相当于形参中的函数指针指向实参数的函数名
void mainFun(void (*p)())   //例如：void fun()
{
    p();      //函数回调
}

//函数指针的回调方式，很灵活，主的函数实现部分不用动，实参传入什么函数名，那么函数指针就回调哪个函数

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        //fun();   //函数的基本调用方法
#if 0
       //C的函数指针 的第一种用法
        //1. 函数指针声明，声明时，要完全匹配去调用的函数的返回值与参数类型
        void (*p)();   //例如: void fun() 声明函数指针的参数类型与返回值与该函数匹配
        //2. 函数指针指向函数名
        p = fun;
        //3. 使用函数指针调用函数
        p();   //函数指针的作用：统一接口调用, 函数回调的应用
#endif
        
#if  0
        //函数指针的第二种用法:函数回调
        //mainFun(fun);
        mainFun(fun1);
#endif
        
        QFDog *wangcai = [[QFDog alloc] init];
        //[wangcai eat];  调用方法的一般形式
#if 0    //SEL的第一种用法
        //SEL容器类型，专门用于存储方法名的一个容器
        SEL sel = @selector(eat);//@selector是一个关键字，用于将方法名放入SEL
        sel  = @selector(play);   //SEL相当于一个函数指针
        //执行SEL中的方法:performSelector
        [wangcai performSelector:sel];
#endif
        //SEL第二种用法：  函数回调、统一多个接口的使用
        //SEL作为形参接受@selector中的方法名
        
        [wangcai action:@selector(eat)];
        [wangcai action:@selector(play)];
    }
    
    return 0;
}
