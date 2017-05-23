//
//  main.m
//  Typedefine在block中的应用
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QFDog.h"

//函数指针变量的类型重命名：把void (*)() 重命名为 fPoint
typedef void (*fPoint)();

void fun()
{
    NSLog(@"fun");
}

void mainFun(fPoint p)
{
    p();   //函数指针的回调
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QFDog *tuGou = [[QFDog alloc] init];
        tuGou.name = @"Tugou";
        [tuGou bark1:^(NSString *name){
        
            NSLog(@"%@的叫声：旺旺旺",name);
        }];
        
        QFDog *tianGou = [[QFDog alloc] init];
        tianGou.name = @"xiaotianquan";
        [tianGou bark1:^(NSString *name){
            NSLog(@"%@的叫声:王王王",name);
        }];
        
        QFDog *zangao = [[QFDog alloc] init];
        zangao.name = @"zangao";
        [zangao bark1:^(NSString *name){
            NSLog(@"%@的叫声:嗷嗷嗷",name);
        }];
    
#if 0   //typedef的应用
        typedef int _int_32;  //typedef 可以给int类型重命名为_int_32
        _int_32 a  = 3;
        NSLog(@"a=%d",a);
        
        mainFun(fun);
#endif

    }
    return 0;
}
