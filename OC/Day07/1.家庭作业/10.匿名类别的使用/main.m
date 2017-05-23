//
//  main.m
//  10.匿名类别的使用
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QFPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QFPerson *xiaohua = [[QFPerson alloc] init];
        xiaohua.name = @"xiaohua";
        [xiaohua print];
        //xiaohua.age = 20;   //匿名类别的属性和方法，在外部无法调用
    }
    return 0;
}
