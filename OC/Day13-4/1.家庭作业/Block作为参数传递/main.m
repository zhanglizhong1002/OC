//
//  main.m
//  Block作为参数传递
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

void fun()
{
    NSLog(@"打印Fun");
}

void fun1()
{
    NSLog(@"Fun1");
}

//在函数参数中声明函数指针变量
//void (*p)() = fun1;
void mainFun(void (*p)())
{
    p();    //函数回调
}
//函数回调作用：统一接口调用
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
       //回顾：函数指针通过参数传递的调用方式
       //函数指针作为参数传递步骤：
        //1.在函数的参数中声明函数指针变量
        //2.通过main函数中调用函数，传递函数名实参；也就是实现形参的函数指针变量指向实参的函数名
        //3.在函数体中用函数指针回调函数；也就是函数指针调函数
#if 0
        //fun();
        //mainFun(fun);
        mainFun(fun1);
#endif
        
        
        
        
        
        
        //block作为函数参数的调用步骤
        //1.在形参中声明block变量
        //2.在main函数中传入'^(NSString *name){}'块
        //3.在函数体中用block变量回调‘^{}’块
        
        /*Person *xiaoqiang = [[Person alloc] init];
        xiaoqiang.name = @"xiaoqiang";
        [xiaoqiang say:^(NSString *name){
            NSLog(@"听%@说，可挣800多",name);
        }];*/
        
        Person *xiaoming = [[Person alloc] init];
        xiaoming.name = @"xiaoming";
        [xiaoming say:^(NSString *name){   // 1
            NSLog(@"听%@说,一月可挣8000多",name);
            //3
        }];    //3
        
        //block作为参数调用步骤：
        //1.调用函数，将实参的‘^{}’传入，形参为声明的block变量
        //2.执行block函数回调
        //3.回调后，会进入'^{}'块的内容中
        //4.'^{}'块的内容执行完后，重新回到say的函数体中，也就是block函数回调的下一步
        //5.say函数体执行完成后，再次回到main函数中
    }   //5
    return 0;
}
