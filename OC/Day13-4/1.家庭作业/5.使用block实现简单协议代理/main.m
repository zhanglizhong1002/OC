//
//  main.m
//  5.使用block实现简单协议代理
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Boy.h"
#import "Girl.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        //协议代理的步骤：
        //1.制定协议
        //2.代理者：遵守协议、实现协议方法、调用协议
        //3.被代理者：找到委托对象、让委托对象启动工作
        
        //男朋友委托女朋友洗衣服－－通过block来实现完成委托的任务
        //实际就是在回调函数后，在‘^{}’块中调用另一对象的方法
        
        
        Boy *xiaoqiang = [[Boy alloc] init];
        xiaoqiang.count = 20;  //男朋友传入要洗的20件衣服
        
        Girl *xiaocai = [[Girl alloc] init];
        [xiaoqiang start:^(NSInteger count){
            [xiaocai doWork:count];  //相当于找到了女朋友这个代理，让她洗完20件衣服
        }];
        
        

    }
    return 0;
}
