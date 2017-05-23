//
//  main.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Product.h"
#import "Saler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Product *pro = [[Product alloc] init];
        Saler *sale = [[Saler alloc] init];
        pro.delegate = sale;
        [pro start];
        
        sale.delegate = pro;
        [sale start];
    }
    return 0;
}
