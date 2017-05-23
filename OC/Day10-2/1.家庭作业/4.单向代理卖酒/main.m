//
//  main.m
//  4.单向代理卖酒
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Boss.h"
#import "Saler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
    //1.制定协议，（厂家和销售商的约定）
    //2.被代理者：指派委托对象，让其完成卖酒协议
    //3.代理者：  遵守协议、实现协议、调用协议
        
        Boss *laowang = [[Boss alloc] init];
        Saler *xiaoniu = [[Saler alloc] init];
        laowang.delegate = xiaoniu;  //4.传入委托的代理对象
        [laowang start];      //5.启动代理对象卖酒

    }
    return 0;
}
