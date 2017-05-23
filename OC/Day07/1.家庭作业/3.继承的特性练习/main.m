//
//  main.m
//  3.继承的特性练习
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "QFCat.h"
#import "QFDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //根据继承的特性1，父亲的就是我的，可以调父类的set、get方法
        QFDog *wangcai = [[QFDog alloc] init];
        wangcai.name = @"wangcai";
        wangcai.age = 3;
        wangcai.sex = 'M';
        
        QFCat *xiaohua = [[QFCat alloc] init];
        xiaohua.name = @"huamei";
        xiaohua.age = 2;
        xiaohua.sex = 'W';
        NSLog(@"QFDog name=%@,age=%ld",wangcai.name,wangcai.age);
        NSLog(@"QFCat name=%@,age=%ld",xiaohua.name,xiaohua.age);
        //继承的特性2:重写，当父类的方法，不适用子类时，子类可重写父类的方法；当重写后，子类不会去调父类的方法，而是调自己的方法
        [wangcai bark];  //旺财重写叫的方法
        [xiaohua bark];  //花妹重写叫的方法
    }
    return 0;
}
