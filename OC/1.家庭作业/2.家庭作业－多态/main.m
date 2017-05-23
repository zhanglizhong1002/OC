//
//  main.m
//  2.家庭作业－多态
//
//  Created by qianfeng on 15/9/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "QFCar.h"
#import "Taix.h"
#import "Truck.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        QFCar *car = [[QFCar alloc] init];
        Taix *bentian = [[Taix alloc] init];
        bentian.bland = @"bentian";
        bentian.price = 20;
        Truck *jiefang = [[Truck alloc] init];
        jiefang.bland = @"jiefang";
        jiefang.price = 100;
        [car start:bentian];  //实现父类对象指向子类对象
        [car start:jiefang];
        
    }
    return 0;
}
