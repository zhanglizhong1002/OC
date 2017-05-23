//
//  main.m
//  Description的用法
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QFDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        QFDog *wangcai = [[QFDog alloc] init];
        [wangcai setName:@"wangcai" andAge:3];
        //NSLog(@"name=%@,age=%ld",[wangcai name],[wangcai age]);
        
        //当通过%@打印输出一个对象时，会去调用父类的description方法
        //当重写description方法后，会调用当前类的description方法
        //NSLog(@"%@",[wangcai description]);
        
        NSLog(@"%@",wangcai);  //[wangcai description]的缩写
        

    }
    return 0;
}
