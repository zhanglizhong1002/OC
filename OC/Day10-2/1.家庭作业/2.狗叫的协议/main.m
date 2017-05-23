//
//  main.m
//  2.狗叫的协议
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Dog.h"
#import "BarkProtocol.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dog *wancai = [[Dog alloc] init];
        //conformsToProtocol：判断wancai对象是否遵守了协议
        if([wancai conformsToProtocol:@protocol(BarkProtocol)])
        {  //遵守协议后进行调用协议
            //4.调用协议方法
            //respondsToSelector:判断协议的方法是否实现
            if([wancai respondsToSelector:@selector(bark)])
            {
                [wancai bark];
            }
        }
    }
    return 0;
}
