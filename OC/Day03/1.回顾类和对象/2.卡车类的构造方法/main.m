//
//  main.m
//  2.卡车类的构造方法
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Truck.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //给当前对象开辟空间并初始化
 //       Truck *dongfeng = [Truck alloc];
 //       dongfeng = [dongfeng init];
        
        //上面两句缩写为：
        Truck *dongfeng = [[Truck alloc] init];
        //使用set方法传值
        [dongfeng setBland:"dongfeng" andSpeed:100];
        //使用get方法取值
        NSLog(@"bland=%s,speed=%ld",[dongfeng bland],[dongfeng speed]);
        
        //使用带参数的构造方法
        Truck *jiefang = [[Truck alloc] initWithBland:"jiefang" andSpeed:150];
        //使用get方法取值
        NSLog(@"bland=%s,speed=%ld",[jiefang bland],[jiefang speed]);
        
    }
    return 0;
}
