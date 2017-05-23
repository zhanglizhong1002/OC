//
//  main.m
//  2.Block的基本使用
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

void fun()
{
    NSLog(@"打印Fun");
}

void fun1()
{
    NSLog(@"Fun1");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //回顾c语言函数指针的使用
        //使用函数指针的步骤：
        //1.声明函数指针变量  声明时注意：返回值和参数类型要与指向的函数完全一致
        //2. 函数指针变量指向函数名  3. 函数指针变量调用函数
        //函数名为指针常量 那么只能调当前函数
        //作用：函数指针变量，是一个变量，可调用更多函数，哪个函数名传入就调哪个函数
#if 0
        void (*p)();  //1.声明函数指针变量
        p = fun;      //2.函数指针变量指向函数名
        p();  //--调用fun()函数    //3.函数指针变量调用函数
        //fun();
        //fun1();
        p = fun1;
        p();  //-----调用fun1()函数
#endif
        //block的使用步骤
        //1. 声明block变量  2. block变量指向没有名字的'^{}'体
        //3. 通过block方法调用‘^{}’;
        
        //无参无返回值的block使用
#if 0
        void (^block)();  //1.声明一个无参无返回值的block
        block = ^{      //2. block变量指向无函数名的‘^{}’,该block块无参无返回值
            NSLog(@"block 的调用");
        };
        block();   //3.通过block方法调用‘^{}’块的内容
#endif
#if 1
        void (^block)(NSString *abc);
        block = ^(NSString *abc){
            
        };
        
        block(@"acc");
        
        
        //有参无返回值的block使用
        void (^block1)(NSInteger a);
        block1 = ^(NSInteger a){
            NSLog(@"a=%ld",a);
        };
        block1(5);  //带参数的block调用
#endif
        
#if 0
        //有参有返回值的block使用
        NSInteger (^block2)(NSInteger a);
        block2 = ^NSInteger(NSInteger a){  //^后面加上返回值类型，代表有返回值的block块
            NSLog(@"a2 = %ld",a);
            return 1;
        };
        NSLog(@"%ld",block2(10));
#endif

        //练习：用block实现字符串反转功能
        NSString * (^block3)(NSString *str);
        block3 = ^NSString*(NSString *str){
            //传入字符串，然后求出长度，逆序循环取出每一个字符，存入到可变字符串中，返回即可
            NSMutableString *mutStr = [NSMutableString string];
            NSInteger len = [str length];
            for(NSInteger i=len-1;i>=0;i--)
            {
                char c = [str characterAtIndex:i];
                [mutStr appendFormat:@"%c",c];
            }
            return mutStr;
        };
        NSLog(@"%@",block3(@"hello"));
        
        //__block的使用
        __block NSInteger a = 10;
        //当局部变量a使用__block修饰后，在'^{}'块中可对变量a进行读写
        
        void (^block4)();
        block4 = ^{
            //在‘^{}’块中，默认对外部的变量可读，但不可写
            a += 10;
            NSLog(@"Hi--%ld",a);  //20
        };
        block4();
        NSLog(@"a== %ld",a);   //20
        
        
    }
    return 0;
}
